import 'package:freezed_annotation/freezed_annotation.dart';

class MillisecondPrecisionDateTimeConverter
    implements JsonConverter<DateTime, String> {
  const MillisecondPrecisionDateTimeConverter();

  @override
  DateTime fromJson(String json) =>
      DateTime.parse(json).toUtc().copyWith(microsecond: 0);

  @override
  String toJson(DateTime dateTime) =>
      dateTime.toUtc().copyWith(microsecond: 0).toIso8601String();
}
