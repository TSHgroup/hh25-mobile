import 'package:freezed_annotation/freezed_annotation.dart';

part 'scenario_model.freezed.dart';
part 'scenario_model.g.dart';

@freezed
abstract class ScenarioModel with _$ScenarioModel {
  const factory ScenarioModel({
    required String id,
    required String title,
    String? subtitle,
    String? description,
    required String category, // "biznes", "szkoła", "relacje" itd.
    List<String>? tags,
    String? language,
    @Default('draft') String status, // "draft", "published", itd.
    @Default('public') String visibility, // "public", "private"

    required UserModel createdBy,
    required DateTime createdAt,
    DateTime? updatedAt,

    List<String>? objectives,

    required AiPersona aiPersona,

    String? openingPrompt,
    String? closingPrompt,

    required Metadata metadata,

    required List<Round> structure,
  }) = _ScenarioModel;

  factory ScenarioModel.fromJson(Map<String, dynamic> json) =>
      _$ScenarioModelFromJson(json);
}

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    String? email,
    String? role,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class AiPersona with _$AiPersona {
  const factory AiPersona({
    required String name,
    required String role,
    String? personality,
    String? voiceProfile,
    @Default("realistic") String responseStyle, // "empathetic", "short", itd.
    required EmotionModel emotionModel,
    @Default(512) int maxResponseLength,
  }) = _AiPersona;

  factory AiPersona.fromJson(Map<String, dynamic> json) =>
      _$AiPersonaFromJson(json);
}

@freezed
abstract class EmotionModel with _$EmotionModel {
  const factory EmotionModel({
    @Default("neutral") String baseline,
    @Default(true) bool adaptToUserEmotion,
  }) = _EmotionModel;

  factory EmotionModel.fromJson(Map<String, dynamic> json) =>
      _$EmotionModelFromJson(json);
}

@freezed
abstract class Metadata with _$Metadata {
  const factory Metadata({
    String? platformVersion,
    String? engine,
    String? audioFormat,
    int? maxRounds,
    String? minVersionRequired,
    @Default(true) bool tagsSearchable,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}

@freezed
abstract class Round with _$Round {
  const factory Round({
    required String id,
    required String aiPrompt,
    required String expectedResponseType, // "argument", "emocja", itd.
    @Default("neutral") String aiEmotion,
    String? userEmotionTarget,
    List<String>? tips,
    List<String>? keywordsRequired,
    List<String>? forbiddenKeywords,
  }) = _Round;

  factory Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);
}
