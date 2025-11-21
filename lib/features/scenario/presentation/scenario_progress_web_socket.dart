import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:web_socket_channel/status.dart' as ws_status;
import 'package:web_socket_channel/web_socket_channel.dart';

typedef MessageCallback = void Function(String content, String type);

class ScenarioProgressWebSocket {
  WebSocketChannel? _channel;
  bool isConnected = false;

  final MessageCallback onMessage;

  final _audioPlayer = AudioPlayer();

  ScenarioProgressWebSocket({required this.onMessage});

  /// Connect to WebSocket server
  void connect({
    required String token,
    required String scenarioId,
    required String roundId,
  }) {
    print("[DEBUG] connect() called");
    print("[DEBUG] token: $token");
    print("[DEBUG] scenarioId: $scenarioId");
    print("[DEBUG] roundId: $roundId");

    if (token.isEmpty || scenarioId.isEmpty || roundId.isEmpty) {
      onMessage("Token, Scenario ID and Round ID are required", "system");
      return;
    }

    final url = "ws://odpalgadke.q1000q.cc/api/v1/ai/chat?token=$token";
    print("[DEBUG] Connecting to WS: $url");

    _channel = WebSocketChannel.connect(Uri.parse(url));

    _channel!.stream.listen(_onData, onDone: _onDone, onError: _onError);

    isConnected = true;
    onMessage("Connected to server", "system");

    print("[DEBUG] Sending START message...");

    /// Send 'start'
    _channel!.sink.add(
      jsonEncode({
        "type": "start",
        "scenarioId": scenarioId,
        "roundId": roundId,
      }),
    );
  }

  /// Handle WebSocket incoming messages
  void _onData(dynamic event) {
    print("[DEBUG] Incoming WS event: $event");

    final data = jsonDecode(event);
    print("[DEBUG] Decoded JSON: $data");

    switch (data['type']) {
      case 'started':
        print(
          "[DEBUG] Chat started, conversationId: ${data['conversationId']}",
        );
        onMessage(
          "Chat started - Conversation ID: ${data['conversationId']}",
          "system",
        );
        break;

      case 'transcription':
        print("[DEBUG] Transcription received: ${data['content']}");
        onMessage("[Transcribed]: ${data['content']}", "user");
        break;

      case 'response':
        print("[DEBUG] Response received");
        print("[DEBUG] Text content: ${data['content']}");
        print("[DEBUG] Audio present: ${data['audio'] != null}");

        onMessage(data['content'], "ai");

        if (data['audio'] != null) {
          print("[DEBUG] Calling _playAudioBase64()...");
          _playAudioBase64(data['audio']);
        }
        break;

      case 'error':
        print("[DEBUG] Error received: ${data['content']}");
        onMessage("Error: ${data['content']}", "system");
        break;

      case 'ended':
        print("[DEBUG] Chat ended");
        onMessage("Chat ended", "system");
        break;

      default:
        print("[DEBUG] Unknown WS message type: ${data['type']}");
    }
  }

  /// Play base64 PCM audio (24kHz, mono, 16-bit)
  Future<void> _playAudioBase64(String base64Audio) async {
    print("[DEBUG] _playAudioBase64 called");
    print("[DEBUG] Base64 length: ${base64Audio.length}");

    try {
      Uint8List pcm = base64Decode(base64Audio);
      print("[DEBUG] PCM bytes decoded: ${pcm.length}");

      // Dodaj WAV header
      Uint8List wavBytes = _wrapPcmToWav(pcm, sampleRate: 24000);
      print("[DEBUG] WAV bytes length: ${wavBytes.length}");

      // Zapisz plik WAV do pamięci
      final dir = await getTemporaryDirectory();
      print("[DEBUG] Temp directory: ${dir.path}");

      final file = File('${dir.path}/tmp_audio.wav');
      await file.writeAsBytes(wavBytes);

      print("[DEBUG] WAV file written to: ${file.path}");
      print("[DEBUG] WAV file size: ${await file.length()} bytes");

      final uri = Uri.file(file.path);
      print("[DEBUG] WAV file URI: $uri");

      await _audioPlayer.setAudioSource(AudioSource.uri(uri));
      print("[DEBUG] Audio source set, starting playback...");

      await _audioPlayer.play();
      print("[DEBUG] Playback started successfully");

      onMessage("🔊 Playing audio response", "system");
    } catch (e, stack) {
      print("[DEBUG] ERROR in _playAudioBase64: $e");
      print("[DEBUG] STACK TRACE:\n$stack");

      onMessage("Audio playback failed: $e", "system");
    }
  }

  /// Wrap raw PCM data to WAV header for Flutter audio
  Uint8List _wrapPcmToWav(Uint8List pcm, {required int sampleRate}) {
    print("[DEBUG] _wrapPcmToWav()");
    print("[DEBUG] PCM length: ${pcm.length}");
    print("[DEBUG] sampleRate: $sampleRate");

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

    print("[DEBUG] WAV header + data generated");

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

  /// Send a normal text message
  void sendMessage(String text) {
    print("[DEBUG] sendMessage: $text");

    if (!isConnected) {
      print("[DEBUG] Not connected — cannot send");
      return;
    }

    _channel?.sink.add(jsonEncode({"type": "message", "content": text}));
    onMessage(text, "user");
  }

  /// Send audio (base64 string)
  void sendAudio(String base64Audio, String mimeType) {
    print("[DEBUG] sendAudio()");
    print("[DEBUG] base64 length: ${base64Audio.length}");
    print("[DEBUG] mimeType: $mimeType");

    if (!isConnected) {
      print("[DEBUG] Not connected — cannot send audio");
      return;
    }

    _channel?.sink.add(
      jsonEncode({
        "type": "audio",
        "audioData": base64Audio,
        "mimeType": mimeType,
      }),
    );

    onMessage("Sending audio...", "user");
  }

  /// Close WebSocket
  void disconnect() {
    print("[DEBUG] disconnect() called");

    if (isConnected) {
      print("[DEBUG] Sending END message and closing WS...");
      _channel?.sink.add(jsonEncode({"type": "end"}));
      _channel?.sink.close(ws_status.normalClosure);
    }
  }

  void _onDone() {
    print("[DEBUG] WebSocket closed (onDone)");
    isConnected = false;
    onMessage("Disconnected from server", "system");
  }

  void _onError(error) {
    print("[DEBUG] WebSocket ERROR: $error");
    onMessage("WebSocket error: $error", "system");
  }
}
