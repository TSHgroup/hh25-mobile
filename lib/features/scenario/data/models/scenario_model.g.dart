// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScenarioModel _$ScenarioModelFromJson(Map<String, dynamic> json) =>
    _ScenarioModel(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      description: json['description'] as String,
      category: json['category'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      languages: (json['languages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      status: json['status'] as String,
      createdBy: json['createdBy'] as String,
      lastUpdatedAt: json['lastUpdatedAt'] as String,
      objectives: (json['objectives'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      persona: json['persona'] as String,
      ai: ScenarioAiModel.fromJson(json['ai'] as Map<String, dynamic>),
      rounds: (json['rounds'] as List<dynamic>)
          .map((e) => ScenarioRoundModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      openingPrompt: json['openingPrompt'] as String?,
      id: json['_id'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ScenarioModelToJson(_ScenarioModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'category': instance.category,
      'tags': instance.tags,
      'languages': instance.languages,
      'status': instance.status,
      'createdBy': instance.createdBy,
      'lastUpdatedAt': instance.lastUpdatedAt,
      'objectives': instance.objectives,
      'persona': instance.persona,
      'ai': instance.ai,
      'rounds': instance.rounds,
      'openingPrompt': instance.openingPrompt,
      '_id': instance.id,
      'createdAt': instance.createdAt,
    };

_ScenarioRoundModel _$ScenarioRoundModelFromJson(Map<String, dynamic> json) =>
    _ScenarioRoundModel(
      tips:
          (json['tips'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      keywordsRequired:
          (json['keywordsRequired'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      keywordsBanned:
          (json['keywordsBanned'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      id: json['_id'] as String,
      prompt: json['prompt'] as String,
      emotion: json['emotion'] as String?,
    );

Map<String, dynamic> _$ScenarioRoundModelToJson(_ScenarioRoundModel instance) =>
    <String, dynamic>{
      'tips': instance.tips,
      'keywordsRequired': instance.keywordsRequired,
      'keywordsBanned': instance.keywordsBanned,
      '_id': instance.id,
      'prompt': instance.prompt,
      'emotion': instance.emotion,
    };

_ScenarioAiModel _$ScenarioAiModelFromJson(Map<String, dynamic> json) =>
    _ScenarioAiModel(
      provider: json['provider'] as String,
      model: json['model'] as String,
      id: json['_id'] as String,
    );

Map<String, dynamic> _$ScenarioAiModelToJson(_ScenarioAiModel instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'model': instance.model,
      '_id': instance.id,
    };
