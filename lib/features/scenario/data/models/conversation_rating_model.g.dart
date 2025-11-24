// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConversationRatingModel _$ConversationRatingModelFromJson(
  Map<String, dynamic> json,
) => _ConversationRatingModel(
  id: json['_id'] as String,
  user: json['user'] as String,
  scenario: json['scenario'] as String,
  rounds: (json['rounds'] as List<dynamic>)
      .map(
        (e) =>
            ConversationRatingRoundsModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  stats: ConversationRatingStatsModel.fromJson(
    json['stats'] as Map<String, dynamic>,
  ),
  length: (json['length'] as num).toInt(),
  createdAt: json['createdAt'] as String,
  updatedAt: json['updatedAt'] as String,
);

Map<String, dynamic> _$ConversationRatingModelToJson(
  _ConversationRatingModel instance,
) => <String, dynamic>{
  '_id': instance.id,
  'user': instance.user,
  'scenario': instance.scenario,
  'rounds': instance.rounds,
  'stats': instance.stats,
  'length': instance.length,
  'createdAt': instance.createdAt,
  'updatedAt': instance.updatedAt,
};

_ConversationRatingRoundsModel _$ConversationRatingRoundsModelFromJson(
  Map<String, dynamic> json,
) => _ConversationRatingRoundsModel(
  roundId: json['roundId'] as String,
  transcript: (json['transcript'] as List<dynamic>)
      .map(
        (e) => ConversationRatingRoundsTranscriptModel.fromJson(
          e as Map<String, dynamic>,
        ),
      )
      .toList(),
);

Map<String, dynamic> _$ConversationRatingRoundsModelToJson(
  _ConversationRatingRoundsModel instance,
) => <String, dynamic>{
  'roundId': instance.roundId,
  'transcript': instance.transcript,
};

_ConversationRatingRoundsTranscriptModel
_$ConversationRatingRoundsTranscriptModelFromJson(Map<String, dynamic> json) =>
    _ConversationRatingRoundsTranscriptModel(
      side: json['side'] as String,
      text: json['text'] as String,
      emotions: json['emotions'] as String,
    );

Map<String, dynamic> _$ConversationRatingRoundsTranscriptModelToJson(
  _ConversationRatingRoundsTranscriptModel instance,
) => <String, dynamic>{
  'side': instance.side,
  'text': instance.text,
  'emotions': instance.emotions,
};

_ConversationRatingStatsModel _$ConversationRatingStatsModelFromJson(
  Map<String, dynamic> json,
) => _ConversationRatingStatsModel(
  emotionScore: (json['emotionScore'] as num).toInt(),
  fluencyScore: (json['fluencyScore'] as num).toInt(),
  wordingScore: (json['wordingScore'] as num).toInt(),
);

Map<String, dynamic> _$ConversationRatingStatsModelToJson(
  _ConversationRatingStatsModel instance,
) => <String, dynamic>{
  'emotionScore': instance.emotionScore,
  'fluencyScore': instance.fluencyScore,
  'wordingScore': instance.wordingScore,
};
