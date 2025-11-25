import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:just_audio/just_audio.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:web_socket_channel/status.dart' as ws_status;
import 'package:web_socket_channel/web_socket_channel.dart';

typedef MessageCallback = void Function(String content, String type);

class ScenarioProgressWebSocket {
  WebSocketChannel? _channel;
  bool isConnected = false;
  ScenarioModel? scenarioModel;
  String? conversationId;

  final MessageCallback onMessage;

  final _audioPlayer = AudioPlayer();

  ScenarioProgressWebSocket({required this.onMessage});

  void connect({
    required String token,
    required ScenarioModel scenario,
    required String roundId,
  }) {
    scenarioModel = scenario;
    if (token.isEmpty || scenario.id.isEmpty || roundId.isEmpty) {
      onMessage("Token, id scenariuszu i id rundu są wymagane!", "system");
      return;
    }

    final url = "ws://odpalgadke.q1000q.cc/api/v1/ai/chat?token=$token";

    _channel = WebSocketChannel.connect(Uri.parse(url));

    _channel!.stream.listen(_onData, onDone: _onDone, onError: _onError);

    isConnected = true;
    // onMessage("Podłączono do serwera", "system");

    _channel!.sink.add(
      jsonEncode({
        "type": "start",
        "scenarioId": scenario.id,
        "roundId": roundId,
      }),
    );
  }

  void _onData(dynamic event) {
    final data = jsonDecode(event);
    switch (data['type']) {
      case 'started':
        conversationId = data['conversationId'];
        onMessage(
          "Start konwersacji - Id konwersacji: $conversationId",
          "system",
        );
        if (scenarioModel != null) {
          onMessage("${scenarioModel?.openingPrompt}", "ai");
        }
        break;

      case 'transcription':
        onMessage("[Transkrypcja]: ${data['content']}", "user");
        break;

      case 'response':
        onMessage(data['content'], "ai");

        if (data['audio'] != null) {
          _playAudioBase64(data['audio']);
        }
        break;

      case 'error':
        onMessage("Błąd: ${data['content']} - spróbuj odświeżyć", "system");
        break;

      case 'ended':
        onMessage("Czat się zakończył", "system");
        break;
    }
  }

  /// Play base64 PCM audio (24kHz, mono, 16-bit)
  Future<void> _playAudioBase64(String base64Audio) async {
    try {
      Uint8List pcm = base64Decode(base64Audio);
      Uint8List wavBytes = _wrapPcmToWav(pcm, sampleRate: 24000);
      final dir = await getTemporaryDirectory();
      final file = File('${dir.path}/tmp_audio.wav');
      await file.writeAsBytes(wavBytes);
      final uri = Uri.file(file.path);
      await _audioPlayer.setAudioSource(AudioSource.uri(uri));
      await _audioPlayer.play();
      onMessage("🔊 Odtwarzanie dźwięku", "system");
    } catch (e) {
      onMessage("Odtwarzanie dźwięku zakończone błędem: $e", "system");
    }
  }

  /// Wrap raw PCM data to WAV header for Flutter audio
  Uint8List _wrapPcmToWav(Uint8List pcm, {required int sampleRate}) {
    int byteRate = sampleRate * 2 * 1;

    final header = BytesBuilder();

    header.add(ascii.encode("RIFF"));
    header.add(_int32(pcm.length + 36));
    header.add(ascii.encode("WAVE"));

    header.add(ascii.encode("fmt "));
    header.add(_int32(16)); // PCM header size
    header.add(_int16(1)); // PCM format
    header.add(_int16(1)); // Mono
    header.add(_int32(sampleRate));
    header.add(_int32(byteRate));
    header.add(_int16(2)); // Block align
    header.add(_int16(16)); // Bits per sample

    header.add(ascii.encode("data"));
    header.add(_int32(pcm.length));
    header.add(pcm);

    return header.toBytes();
  }

  Uint8List _int16(int value) {
    return Uint8List(2)
      ..[0] = value & 0xff
      ..[1] = (value >> 8) & 0xff;
  }

  Uint8List _int32(int value) {
    return Uint8List(4)
      ..[0] = value & 0xff
      ..[1] = (value >> 8) & 0xff
      ..[2] = (value >> 16) & 0xff
      ..[3] = (value >> 24) & 0xff;
  }

  void sendMessage(String text) {
    if (!isConnected) {
      return;
    }

    _channel?.sink.add(jsonEncode({"type": "message", "content": text}));
    onMessage(text, "user");
  }

  void sendAudio(String base64Audio, String mimeType) {
    if (!isConnected) {
      return;
    }

    _channel?.sink.add(
      jsonEncode({
        "type": "audio",
        "audioData": base64Audio,
        "mimeType": mimeType,
      }),
    );

    onMessage("Wysyłanie audio...", "user");
  }

  void disconnect() {
    if (isConnected) {
      _channel?.sink.add(jsonEncode({"type": "end"}));
      _channel?.sink.close(ws_status.normalClosure);
    }
  }

  void _onDone() {
    isConnected = false;
    // onMessage("Rozłączono z serwerem", "system");
  }

  void _onError(dynamic error) {
    onMessage("Błąd webscoketa: $error", "system");
  }
}
