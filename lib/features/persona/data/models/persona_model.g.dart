// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persona_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PersonaModel _$PersonaModelFromJson(Map<String, dynamic> json) =>
    _PersonaModel(
      id: json['_id'] as String,
      name: json['name'] as String,
      role: json['role'] as String,
      personality: json['personality'] as String,
      voice: json['voice'] as String,
      informations: json['informations'] as String,
      emotionModel: PersonaEmotionModelModel.fromJson(
        json['emotionModel'] as Map<String, dynamic>,
      ),
      maxResponseTokens: (json['maxResponseTokens'] as num).toInt(),
      public: json['public'] as bool,
      createdBy: json['createdBy'] as String,
      v: (json['__v'] as num).toInt(),
    );

Map<String, dynamic> _$PersonaModelToJson(_PersonaModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'role': instance.role,
      'personality': instance.personality,
      'voice': instance.voice,
      'informations': instance.informations,
      'emotionModel': instance.emotionModel,
      'maxResponseTokens': instance.maxResponseTokens,
      'public': instance.public,
      'createdBy': instance.createdBy,
      '__v': instance.v,
    };

_PersonaEmotionModelModel _$PersonaEmotionModelModelFromJson(
  Map<String, dynamic> json,
) => _PersonaEmotionModelModel(
  baseline: json['baseline'] as String,
  adapt: json['adapt'] as bool,
  id: json['_id'] as String,
);

Map<String, dynamic> _$PersonaEmotionModelModelToJson(
  _PersonaEmotionModelModel instance,
) => <String, dynamic>{
  'baseline': instance.baseline,
  'adapt': instance.adapt,
  '_id': instance.id,
};
