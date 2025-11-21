import 'package:freezed_annotation/freezed_annotation.dart';

part 'persona_model.freezed.dart';

part 'persona_model.g.dart';

@freezed
abstract class PersonaModel with _$PersonaModel {
  factory PersonaModel({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String role,
    required String personality,
    required String voice,
    required String informations,
    required PersonaEmotionModelModel emotionModel,
    required int maxResponseTokens,
    required bool public,
    required String createdBy,
    @JsonKey(name: '__v') required int v,
  }) = _PersonaModel;

  factory PersonaModel.fromJson(Map<String, dynamic> json) =>
      _$PersonaModelFromJson(json);
}

@freezed
abstract class PersonaEmotionModelModel with _$PersonaEmotionModelModel {
  factory PersonaEmotionModelModel({
    required String baseline,
    required bool adapt,
    @JsonKey(name: '_id') required String id,
  }) = _PersonaEmotionModelModel;

  factory PersonaEmotionModelModel.fromJson(Map<String, dynamic> json) =>
      _$PersonaEmotionModelModelFromJson(json);
}
