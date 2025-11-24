// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  account: UserAccountModel.fromJson(json['account'] as Map<String, dynamic>),
  profile: UserProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{'account': instance.account, 'profile': instance.profile};

_UserAccountModel _$UserAccountModelFromJson(Map<String, dynamic> json) =>
    _UserAccountModel(
      id: json['_id'] as String,
      email: json['email'] as String,
      emailVerified: json['emailVerified'] as bool,
      name: UserNameModel.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserAccountModelToJson(_UserAccountModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'emailVerified': instance.emailVerified,
      'name': instance.name,
    };

_UserNameModel _$UserNameModelFromJson(Map<String, dynamic> json) =>
    _UserNameModel(
      id: json['_id'] as String,
      givenName: json['givenName'] as String,
      familyName: json['familyName'] as String,
    );

Map<String, dynamic> _$UserNameModelToJson(_UserNameModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'givenName': instance.givenName,
      'familyName': instance.familyName,
    };

_UserProfileModel _$UserProfileModelFromJson(Map<String, dynamic> json) =>
    _UserProfileModel(
      id: json['_id'] as String,
      displayName: json['displayName'] as String? ?? "",
      language: json['language'] as String,
      bio: json['bio'] as String?,
      goals: (json['goals'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UserProfileModelToJson(_UserProfileModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'displayName': instance.displayName,
      'language': instance.language,
      'bio': instance.bio,
      'goals': instance.goals,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
