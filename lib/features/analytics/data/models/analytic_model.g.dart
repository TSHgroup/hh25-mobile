// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnalyticModel _$AnalyticModelFromJson(Map<String, dynamic> json) =>
    _AnalyticModel(
      trends: AnalyticTrendsModel.fromJson(
        json['trends'] as Map<String, dynamic>,
      ),
      currentStreak: (json['currentStreak'] as num?)?.toInt(),
      analytics: AnalyticAnalyticsModel.fromJson(
        json['analytics'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$AnalyticModelToJson(_AnalyticModel instance) =>
    <String, dynamic>{
      'trends': instance.trends,
      'currentStreak': instance.currentStreak,
      'analytics': instance.analytics,
    };

_AnalyticTrendsModel _$AnalyticTrendsModelFromJson(Map<String, dynamic> json) =>
    _AnalyticTrendsModel(
      conversations: (json['conversations'] as num?)?.toInt(),
      totalLength: (json['totalLength'] as num?)?.toInt(),
      emotionScore: (json['emotionScore'] as num?)?.toInt(),
      fluencyScore: (json['fluencyScore'] as num?)?.toInt(),
      wordingScore: (json['wordingScore'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnalyticTrendsModelToJson(
  _AnalyticTrendsModel instance,
) => <String, dynamic>{
  'conversations': instance.conversations,
  'totalLength': instance.totalLength,
  'emotionScore': instance.emotionScore,
  'fluencyScore': instance.fluencyScore,
  'wordingScore': instance.wordingScore,
};

_AnalyticAnalyticsModel _$AnalyticAnalyticsModelFromJson(
  Map<String, dynamic> json,
) => _AnalyticAnalyticsModel(
  conversations: (json['conversations'] as num?)?.toInt(),
  totalLength: (json['totalLength'] as num?)?.toInt(),
  averageEmotion: (json['averageEmotion'] as num?)?.toInt(),
  averageFluency: (json['averageFluency'] as num?)?.toInt(),
  averageWording: (json['averageWording'] as num?)?.toInt(),
);

Map<String, dynamic> _$AnalyticAnalyticsModelToJson(
  _AnalyticAnalyticsModel instance,
) => <String, dynamic>{
  'conversations': instance.conversations,
  'totalLength': instance.totalLength,
  'averageEmotion': instance.averageEmotion,
  'averageFluency': instance.averageFluency,
  'averageWording': instance.averageWording,
};
