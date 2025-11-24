import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytic_model.freezed.dart';

part 'analytic_model.g.dart';

@freezed
abstract class AnalyticModel with _$AnalyticModel {
  factory AnalyticModel({
    required AnalyticTrendsModel trends,
    required int? currentStreak,
    required AnalyticAnalyticsModel analytics,
  }) = _AnalyticModel;

  factory AnalyticModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticModelFromJson(json);
}

@freezed
abstract class AnalyticTrendsModel with _$AnalyticTrendsModel {
  factory AnalyticTrendsModel({
    required int? conversations,
    required int? totalLength,
    required int? emotionScore,
    required int? fluencyScore,
    required int? wordingScore,
  }) = _AnalyticTrendsModel;

  factory AnalyticTrendsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticTrendsModelFromJson(json);
}

@freezed
abstract class AnalyticAnalyticsModel with _$AnalyticAnalyticsModel {
  factory AnalyticAnalyticsModel({
    required int? conversations,
    required int? totalLength,
    required int? averageEmotion,
    required int? averageFluency,
    required int? averageWording,
  }) = _AnalyticAnalyticsModel;

  factory AnalyticAnalyticsModel.fromJson(Map<String, dynamic> json) =>
      _$AnalyticAnalyticsModelFromJson(json);
}
