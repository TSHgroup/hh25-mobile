// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scenario_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ScenarioModel _$ScenarioModelFromJson(Map<String, dynamic> json) =>
    _ScenarioModel(
      id: json['id'] as String,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      language: json['language'] as String?,
      status: json['status'] as String? ?? 'draft',
      visibility: json['visibility'] as String? ?? 'public',
      createdBy: UserModel.fromJson(json['createdBy'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      objectives: (json['objectives'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      aiPersona: AiPersona.fromJson(json['aiPersona'] as Map<String, dynamic>),
      openingPrompt: json['openingPrompt'] as String?,
      closingPrompt: json['closingPrompt'] as String?,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      structure: (json['structure'] as List<dynamic>)
          .map((e) => Round.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScenarioModelToJson(_ScenarioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'description': instance.description,
      'category': instance.category,
      'tags': instance.tags,
      'language': instance.language,
      'status': instance.status,
      'visibility': instance.visibility,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'objectives': instance.objectives,
      'aiPersona': instance.aiPersona,
      'openingPrompt': instance.openingPrompt,
      'closingPrompt': instance.closingPrompt,
      'metadata': instance.metadata,
      'structure': instance.structure,
    };

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String?,
  role: json['role'] as String?,
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'role': instance.role,
    };

_AiPersona _$AiPersonaFromJson(Map<String, dynamic> json) => _AiPersona(
  name: json['name'] as String,
  role: json['role'] as String,
  personality: json['personality'] as String?,
  voiceProfile: json['voiceProfile'] as String?,
  responseStyle: json['responseStyle'] as String? ?? "realistic",
  emotionModel: EmotionModel.fromJson(
    json['emotionModel'] as Map<String, dynamic>,
  ),
  maxResponseLength: (json['maxResponseLength'] as num?)?.toInt() ?? 512,
);

Map<String, dynamic> _$AiPersonaToJson(_AiPersona instance) =>
    <String, dynamic>{
      'name': instance.name,
      'role': instance.role,
      'personality': instance.personality,
      'voiceProfile': instance.voiceProfile,
      'responseStyle': instance.responseStyle,
      'emotionModel': instance.emotionModel,
      'maxResponseLength': instance.maxResponseLength,
    };

_EmotionModel _$EmotionModelFromJson(Map<String, dynamic> json) =>
    _EmotionModel(
      baseline: json['baseline'] as String? ?? "neutral",
      adaptToUserEmotion: json['adaptToUserEmotion'] as bool? ?? true,
    );

Map<String, dynamic> _$EmotionModelToJson(_EmotionModel instance) =>
    <String, dynamic>{
      'baseline': instance.baseline,
      'adaptToUserEmotion': instance.adaptToUserEmotion,
    };

_Metadata _$MetadataFromJson(Map<String, dynamic> json) => _Metadata(
  platformVersion: json['platformVersion'] as String?,
  engine: json['engine'] as String?,
  audioFormat: json['audioFormat'] as String?,
  maxRounds: (json['maxRounds'] as num?)?.toInt(),
  minVersionRequired: json['minVersionRequired'] as String?,
  tagsSearchable: json['tagsSearchable'] as bool? ?? true,
);

Map<String, dynamic> _$MetadataToJson(_Metadata instance) => <String, dynamic>{
  'platformVersion': instance.platformVersion,
  'engine': instance.engine,
  'audioFormat': instance.audioFormat,
  'maxRounds': instance.maxRounds,
  'minVersionRequired': instance.minVersionRequired,
  'tagsSearchable': instance.tagsSearchable,
};

_Round _$RoundFromJson(Map<String, dynamic> json) => _Round(
  id: json['id'] as String,
  aiPrompt: json['aiPrompt'] as String,
  expectedResponseType: json['expectedResponseType'] as String,
  aiEmotion: json['aiEmotion'] as String? ?? "neutral",
  userEmotionTarget: json['userEmotionTarget'] as String?,
  tips: (json['tips'] as List<dynamic>?)?.map((e) => e as String).toList(),
  keywordsRequired: (json['keywordsRequired'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  forbiddenKeywords: (json['forbiddenKeywords'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$RoundToJson(_Round instance) => <String, dynamic>{
  'id': instance.id,
  'aiPrompt': instance.aiPrompt,
  'expectedResponseType': instance.expectedResponseType,
  'aiEmotion': instance.aiEmotion,
  'userEmotionTarget': instance.userEmotionTarget,
  'tips': instance.tips,
  'keywordsRequired': instance.keywordsRequired,
  'forbiddenKeywords': instance.forbiddenKeywords,
};
