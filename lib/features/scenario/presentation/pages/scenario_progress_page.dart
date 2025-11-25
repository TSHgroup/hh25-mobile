import 'dart:convert';
import 'dart:io';

import 'package:go_router/go_router.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:odpalgadke/features/scenario/data/data_sources/scenario_data_source.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:odpalgadke/features/scenario/presentation/scenario_progress_web_socket.dart';
import 'package:path_provider/path_provider.dart';
import 'package:record/record.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart';

class ScenarioProgressPage extends StatefulWidget {
  final ScenarioModel scenario;

  const ScenarioProgressPage({super.key, required this.scenario});

  @override
  State<ScenarioProgressPage> createState() => _ScenarioProgressPageState();
}

class _ScenarioProgressPageState extends State<ScenarioProgressPage> {
  late ScenarioProgressWebSocket ws;
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<Map<String, String>> _messages = [];
  String token = "";
  bool connected = false;

  final AudioRecorder _recorder = AudioRecorder();
  bool _isRecording = false;

  Future<void> _startRecording() async {
    if (await _recorder.hasPermission()) {
      final dir = await getTemporaryDirectory();
      final path = '${dir.path}/recorded_audio.m4a';

      await _recorder.start(
        const RecordConfig(
          encoder: AudioEncoder.aacLc,
          bitRate: 128000,
          sampleRate: 24000,
        ),
        path: path,
      );

      setState(() => _isRecording = true);
    }
  }

  Future<void> _stopRecording() async {
    final path = await _recorder.stop();
    setState(() => _isRecording = false);

    if (path == null) return;

    final file = File(path);
    final bytes = await file.readAsBytes();
    final base64Audio = base64Encode(bytes);

    ws.sendAudio(base64Audio, "audio/m4a");
  }

  @override
  void initState() {
    super.initState();
    _initTokenAndConnect();
  }

  Future<void> _initTokenAndConnect() async {
    token = await get<AuthSecureStorage>().getAccessToken() ?? "";
    if (token.isEmpty) return;

    ws = ScenarioProgressWebSocket(onMessage: _onNewMessage);

    ws.connect(
      token: token,
      scenario: widget.scenario,
      roundId: widget.scenario.rounds[0].id,
    );

    setState(() {
      connected = true;
    });
  }

  void _onNewMessage(String content, String type) {
    setState(() {
      _messages.add({"content": content, "type": type});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty || !connected) return;

    ws.sendMessage(text);
    _messageController.clear();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    if (connected) ws.disconnect();
    super.dispose();
  }

  Widget _buildFormattedText(String input, TextStyle baseStyle) {
    final RegExp exp = RegExp(r'\*(.*?)\*');
    final List<InlineSpan> spans = [];

    int currentIndex = 0;

    baseStyle = baseStyle.copyWith(fontSize: 17.sp);

    for (final match in exp.allMatches(input)) {
      if (match.start > currentIndex) {
        spans.add(
          TextSpan(
            text: input.substring(currentIndex, match.start),
            style: baseStyle,
          ),
        );
      }

      spans.add(
        TextSpan(
          text: match.group(1),
          style: baseStyle.copyWith(fontWeight: FontWeight.bold),
        ),
      );

      currentIndex = match.end;
    }

    if (currentIndex < input.length) {
      spans.add(
        TextSpan(text: input.substring(currentIndex), style: baseStyle),
      );
    }

    return RichText(text: TextSpan(children: spans));
  }

  Widget _buildMessageTile(Map<String, String> msg) {
    final isUser = msg["type"] == "user";
    final isAI = msg["type"] == "ai";

    Color bgColor;
    Alignment align;
    TextStyle textStyle;

    if (isUser) {
      bgColor = Colors.blue.shade600;
      align = Alignment.centerRight;
      textStyle = const TextStyle(color: Colors.white);
    } else if (isAI) {
      bgColor = Colors.green.shade600;
      align = Alignment.centerLeft;
      textStyle = const TextStyle(color: Colors.white);
    } else {
      bgColor = Colors.amber.shade200;
      align = Alignment.center;
      textStyle = TextStyle(color: Colors.black, fontStyle: FontStyle.italic);
    }

    return Align(
      alignment: align,
      child: Card(
        borderColor: bgColor,
        fillColor: bgColor,
        filled: true,
        child: _buildFormattedText(msg["content"] ?? "", textStyle),
      ).withPadding(vertical: 0.25.h, horizontal: 2.w),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      headers: [
        AppBar(
          leading: [
            OutlineButton(
              density: ButtonDensity.icon,
              onPressed: () => context.pop(),
              child: Icon(Icons.arrow_back_ios_new),
            ),
          ],
          trailing: [
            PrimaryButton(
              child: const Text('Zakończ i oceń'),
              onPressed: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Zakończyć konwersację?'),
                      content: const Text('Tego nie można cofnąć!'),
                      actions: [
                        OutlineButton(
                          child: const Text('Anuluj'),
                          onPressed: () {
                            context.pop();
                          },
                        ),
                        PrimaryButton(
                          child: const Text('Zakończ'),
                          onPressed: () async {
                            ws.disconnect();

                            if (ws.conversationId != null) {
                              final either = await get<ScenarioDataSource>()
                                  .fetchConversation(ws.conversationId!);

                              either.fold((exception) => {}, (conversation) {
                                context.pop();
                                context.replace(
                                  '/scenario/results',
                                  extra: {
                                    'conversation': conversation,
                                    'scenario': widget.scenario,
                                  },
                                );
                              });
                            }
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ],
      footers: [
        SafeArea(
          top: false,
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),

                PrimaryButton(
                  onPressed: () async {
                    if (_isRecording) {
                      await _stopRecording();
                    } else {
                      await _startRecording();
                    }
                  },
                  child: Icon(_isRecording ? Icons.stop : Icons.mic, size: 22),
                ),

                const SizedBox(width: 8),

                PrimaryButton(
                  onPressed: _sendMessage,
                  child: const Icon(Icons.send, size: 20),
                ),
              ],
            ),
          ),
        ),
      ],
      child: SafeArea(
        child: Center(
          child: SizedBox(
            width: 72.h,
            child: ListView.builder(
              controller: _scrollController,
              itemCount: _messages.length,
              itemBuilder: (context, index) =>
                  _buildMessageTile(_messages[index]),
            ),
          ),
        ),
      ),
    );
  }
}
