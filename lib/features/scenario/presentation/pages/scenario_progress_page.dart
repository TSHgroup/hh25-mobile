import 'package:flutter/material.dart';
import 'package:odpalgadke/common/injection/dependency_injection.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:odpalgadke/features/scenario/presentation/scenario_progress_web_socket.dart';

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
  List<Map<String, String>> _messages = [];

  String token = "";
  bool connected = false;

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
      scenarioId: widget.scenario.id,
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

    // Auto-scroll to bottom
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

  void _disconnect() {
    ws.disconnect();
    setState(() {
      connected = false;
    });
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    if (connected) ws.disconnect();
    super.dispose();
  }

  Widget _buildMessageTile(Map<String, String> msg) {
    final isUser = msg["type"] == "user";
    final isAI = msg["type"] == "ai";
    final isSystem = msg["type"] == "system";

    Color bgColor;
    Alignment align;
    TextStyle textStyle;

    if (isUser) {
      bgColor = Colors.blue;
      align = Alignment.centerRight;
      textStyle = const TextStyle(color: Colors.white);
    } else if (isAI) {
      bgColor = Colors.green;
      align = Alignment.centerLeft;
      textStyle = const TextStyle(color: Colors.white);
    } else {
      bgColor = Colors.yellow;
      align = Alignment.center;
      textStyle = const TextStyle(color: Colors.black, fontStyle: FontStyle.italic);
    }

    return Container(
      alignment: align,
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(msg["content"] ?? "", style: textStyle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scenario Progress Chat"),
        actions: [
          IconButton(
            icon: Icon(connected ? Icons.link_off : Icons.link),
            onPressed: connected ? _disconnect : _initTokenAndConnect,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.grey.shade200,
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return _buildMessageTile(_messages[index]);
                },
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: "Type a message...",
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Colors.blue,
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
