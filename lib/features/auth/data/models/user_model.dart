import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  factory UserModel({
    required UserAccountModel account,
    required UserProfileModel profile,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
abstract class UserAccountModel with _$UserAccountModel {
  factory UserAccountModel({
    @JsonKey(name: '_id') required String id,
    required String email,
    required bool emailVerified,
    required UserNameModel name,
  }) = _UserAccountModel;

  factory UserAccountModel.fromJson(Map<String, dynamic> json) =>
      _$UserAccountModelFromJson(json);
}

@freezed
abstract class UserNameModel with _$UserNameModel {
  factory UserNameModel({
    @JsonKey(name: '_id') required String id,
    required String givenName,
    required String familyName,
  }) = _UserNameModel;

  factory UserNameModel.fromJson(Map<String, dynamic> json) =>
      _$UserNameModelFromJson(json);
}

@freezed
abstract class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    @JsonKey(name: '_id') required String id,
    required String displayName,
    required String language,
    @Default(null) String? bio,
    required List<String> goals,
    required String createdAt,
    required String updatedAt,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
