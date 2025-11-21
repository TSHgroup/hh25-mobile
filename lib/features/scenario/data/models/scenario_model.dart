import 'package:freezed_annotation/freezed_annotation.dart';

part 'scenario_model.freezed.dart';
part 'scenario_model.g.dart';

@freezed
abstract class ScenarioModel with _$ScenarioModel {
  factory ScenarioModel({
    required String title,
    required String subtitle,
    required String description,
    required String category,
    required List<String> tags,
    required List<String> languages,
    required String status,
    required String createdBy,
    required String lastUpdatedAt,
    required List<String> objectives,
    required String persona,
    required ScenarioAiModel ai,
    required List<ScenarioRoundModel> rounds,
    @JsonKey(name: '_id') required String id,
    required String createdAt,
  }) = _ScenarioModel;

  factory ScenarioModel.fromJson(Map<String, dynamic> json) =>
      _$ScenarioModelFromJson(json);
}

@freezed
abstract class ScenarioRoundModel with _$ScenarioRoundModel {
  factory ScenarioRoundModel({
    @Default([]) List<String> tips,
    @Default([]) List<String> keywordsRequired,
    @Default([]) List<String> keywordsBanned,
    @JsonKey(name: '_id') required String id,
    required String prompt,
    required String? emotion,
  }) = _ScenarioRoundModel;

  factory ScenarioRoundModel.fromJson(Map<String, dynamic> json) => _$ScenarioRoundModelFromJson(json);
}

@freezed
abstract class ScenarioAiModel with _$ScenarioAiModel {
  factory ScenarioAiModel({
    required String provider,
    required String model,
    @JsonKey(name: '_id') required String id,
  }) = _ScenarioAiModel;

  factory ScenarioAiModel.fromJson(Map<String, dynamic> json) =>
      _$ScenarioAiModelFromJson(json);
}
