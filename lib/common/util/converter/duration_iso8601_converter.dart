import 'package:json_annotation/json_annotation.dart';

class DurationIso8601Converter implements JsonConverter<Duration?, String?> {
  const DurationIso8601Converter();

  @override
  Duration? fromJson(String? value) {
    if (value == null) return null;

    final regex = RegExp(r'^P(?:(\d+)D)?T?(?:(\d+)H)?(?:(\d+)M)?(?:(\d+)S)?$');
    final match = regex.firstMatch(value);
    if (match == null) return null;

    final days = int.tryParse(match.group(1) ?? '0') ?? 0;
    final hours = int.tryParse(match.group(2) ?? '0') ?? 0;
    final minutes = int.tryParse(match.group(3) ?? '0') ?? 0;
    final seconds = int.tryParse(match.group(4) ?? '0') ?? 0;

    return Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
    );
  }

  @override
  String? toJson(Duration? duration) {
    if (duration == null) return null;

    final days = duration.inDays;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    return 'P${days}DT${hours.toString().padLeft(2, '0')}H'
        '${minutes.toString().padLeft(2, '0')}M${seconds.toString().padLeft(2, '0')}S';
  }
}
