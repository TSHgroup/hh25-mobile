import 'package:freezed_annotation/freezed_annotation.dart';

part 'conversation_rating_model.freezed.dart';
part 'conversation_rating_model.g.dart';

@freezed
abstract class ConversationRatingModel with _$ConversationRatingModel {
  factory ConversationRatingModel({
    @JsonKey(name: '_id') required String id,
    required String user,
    required String scenario,
    required List<ConversationRatingRoundsModel> rounds,
    required ConversationRatingStatsModel stats,
    required int? length,
    required String createdAt,
    required String updatedAt,
  }) = _ConversationRatingModel;

  factory ConversationRatingModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationRatingModelFromJson(json);
}

@freezed
abstract class ConversationRatingRoundsModel
    with _$ConversationRatingRoundsModel {
  factory ConversationRatingRoundsModel({
    required String roundId,
    required List<ConversationRatingRoundsTranscriptModel> transcript,
  }) = _ConversationRatingRoundsModel;

  factory ConversationRatingRoundsModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationRatingRoundsModelFromJson(json);
}

@freezed
abstract class ConversationRatingRoundsTranscriptModel
    with _$ConversationRatingRoundsTranscriptModel {
  factory ConversationRatingRoundsTranscriptModel({
    required String side,
    required String text,
    required String emotions,
  }) = _ConversationRatingRoundsTranscriptModel;

  factory ConversationRatingRoundsTranscriptModel.fromJson(
    Map<String, dynamic> json,
  ) => _$ConversationRatingRoundsTranscriptModelFromJson(json);
}

@freezed
abstract class ConversationRatingStatsModel
    with _$ConversationRatingStatsModel {
  factory ConversationRatingStatsModel({
    required int emotionScore,
    required int fluencyScore,
    required int wordingScore,
  }) = _ConversationRatingStatsModel;

  factory ConversationRatingStatsModel.fromJson(Map<String, dynamic> json) =>
      _$ConversationRatingStatsModelFromJson(json);
}
