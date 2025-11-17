// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scenario_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ScenarioModel {

 String get id; String get title; String? get subtitle; String? get description; String get category;// "biznes", "szkoła", "relacje" itd.
 List<String>? get tags; String? get language; String get status;// "draft", "published", itd.
 String get visibility;// "public", "private"
 UserModel get createdBy; DateTime get createdAt; DateTime? get updatedAt; List<String>? get objectives; AiPersona get aiPersona; String? get openingPrompt; String? get closingPrompt; Metadata get metadata; List<Round> get structure;
/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScenarioModelCopyWith<ScenarioModel> get copyWith => _$ScenarioModelCopyWithImpl<ScenarioModel>(this as ScenarioModel, _$identity);

  /// Serializes this ScenarioModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScenarioModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.language, language) || other.language == language)&&(identical(other.status, status) || other.status == status)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.objectives, objectives)&&(identical(other.aiPersona, aiPersona) || other.aiPersona == aiPersona)&&(identical(other.openingPrompt, openingPrompt) || other.openingPrompt == openingPrompt)&&(identical(other.closingPrompt, closingPrompt) || other.closingPrompt == closingPrompt)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&const DeepCollectionEquality().equals(other.structure, structure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,description,category,const DeepCollectionEquality().hash(tags),language,status,visibility,createdBy,createdAt,updatedAt,const DeepCollectionEquality().hash(objectives),aiPersona,openingPrompt,closingPrompt,metadata,const DeepCollectionEquality().hash(structure));

@override
String toString() {
  return 'ScenarioModel(id: $id, title: $title, subtitle: $subtitle, description: $description, category: $category, tags: $tags, language: $language, status: $status, visibility: $visibility, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, objectives: $objectives, aiPersona: $aiPersona, openingPrompt: $openingPrompt, closingPrompt: $closingPrompt, metadata: $metadata, structure: $structure)';
}


}

/// @nodoc
abstract mixin class $ScenarioModelCopyWith<$Res>  {
  factory $ScenarioModelCopyWith(ScenarioModel value, $Res Function(ScenarioModel) _then) = _$ScenarioModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? subtitle, String? description, String category, List<String>? tags, String? language, String status, String visibility, UserModel createdBy, DateTime createdAt, DateTime? updatedAt, List<String>? objectives, AiPersona aiPersona, String? openingPrompt, String? closingPrompt, Metadata metadata, List<Round> structure
});


$UserModelCopyWith<$Res> get createdBy;$AiPersonaCopyWith<$Res> get aiPersona;$MetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$ScenarioModelCopyWithImpl<$Res>
    implements $ScenarioModelCopyWith<$Res> {
  _$ScenarioModelCopyWithImpl(this._self, this._then);

  final ScenarioModel _self;
  final $Res Function(ScenarioModel) _then;

/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? description = freezed,Object? category = null,Object? tags = freezed,Object? language = freezed,Object? status = null,Object? visibility = null,Object? createdBy = null,Object? createdAt = null,Object? updatedAt = freezed,Object? objectives = freezed,Object? aiPersona = null,Object? openingPrompt = freezed,Object? closingPrompt = freezed,Object? metadata = null,Object? structure = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,objectives: freezed == objectives ? _self.objectives : objectives // ignore: cast_nullable_to_non_nullable
as List<String>?,aiPersona: null == aiPersona ? _self.aiPersona : aiPersona // ignore: cast_nullable_to_non_nullable
as AiPersona,openingPrompt: freezed == openingPrompt ? _self.openingPrompt : openingPrompt // ignore: cast_nullable_to_non_nullable
as String?,closingPrompt: freezed == closingPrompt ? _self.closingPrompt : closingPrompt // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Metadata,structure: null == structure ? _self.structure : structure // ignore: cast_nullable_to_non_nullable
as List<Round>,
  ));
}
/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get createdBy {
  
  return $UserModelCopyWith<$Res>(_self.createdBy, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiPersonaCopyWith<$Res> get aiPersona {
  
  return $AiPersonaCopyWith<$Res>(_self.aiPersona, (value) {
    return _then(_self.copyWith(aiPersona: value));
  });
}/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetadataCopyWith<$Res> get metadata {
  
  return $MetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [ScenarioModel].
extension ScenarioModelPatterns on ScenarioModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScenarioModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScenarioModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScenarioModel value)  $default,){
final _that = this;
switch (_that) {
case _ScenarioModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScenarioModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScenarioModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  String? description,  String category,  List<String>? tags,  String? language,  String status,  String visibility,  UserModel createdBy,  DateTime createdAt,  DateTime? updatedAt,  List<String>? objectives,  AiPersona aiPersona,  String? openingPrompt,  String? closingPrompt,  Metadata metadata,  List<Round> structure)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScenarioModel() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.description,_that.category,_that.tags,_that.language,_that.status,_that.visibility,_that.createdBy,_that.createdAt,_that.updatedAt,_that.objectives,_that.aiPersona,_that.openingPrompt,_that.closingPrompt,_that.metadata,_that.structure);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? subtitle,  String? description,  String category,  List<String>? tags,  String? language,  String status,  String visibility,  UserModel createdBy,  DateTime createdAt,  DateTime? updatedAt,  List<String>? objectives,  AiPersona aiPersona,  String? openingPrompt,  String? closingPrompt,  Metadata metadata,  List<Round> structure)  $default,) {final _that = this;
switch (_that) {
case _ScenarioModel():
return $default(_that.id,_that.title,_that.subtitle,_that.description,_that.category,_that.tags,_that.language,_that.status,_that.visibility,_that.createdBy,_that.createdAt,_that.updatedAt,_that.objectives,_that.aiPersona,_that.openingPrompt,_that.closingPrompt,_that.metadata,_that.structure);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? subtitle,  String? description,  String category,  List<String>? tags,  String? language,  String status,  String visibility,  UserModel createdBy,  DateTime createdAt,  DateTime? updatedAt,  List<String>? objectives,  AiPersona aiPersona,  String? openingPrompt,  String? closingPrompt,  Metadata metadata,  List<Round> structure)?  $default,) {final _that = this;
switch (_that) {
case _ScenarioModel() when $default != null:
return $default(_that.id,_that.title,_that.subtitle,_that.description,_that.category,_that.tags,_that.language,_that.status,_that.visibility,_that.createdBy,_that.createdAt,_that.updatedAt,_that.objectives,_that.aiPersona,_that.openingPrompt,_that.closingPrompt,_that.metadata,_that.structure);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScenarioModel implements ScenarioModel {
  const _ScenarioModel({required this.id, required this.title, this.subtitle, this.description, required this.category, final  List<String>? tags, this.language, this.status = 'draft', this.visibility = 'public', required this.createdBy, required this.createdAt, this.updatedAt, final  List<String>? objectives, required this.aiPersona, this.openingPrompt, this.closingPrompt, required this.metadata, required final  List<Round> structure}): _tags = tags,_objectives = objectives,_structure = structure;
  factory _ScenarioModel.fromJson(Map<String, dynamic> json) => _$ScenarioModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? subtitle;
@override final  String? description;
@override final  String category;
// "biznes", "szkoła", "relacje" itd.
 final  List<String>? _tags;
// "biznes", "szkoła", "relacje" itd.
@override List<String>? get tags {
  final value = _tags;
  if (value == null) return null;
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? language;
@override@JsonKey() final  String status;
// "draft", "published", itd.
@override@JsonKey() final  String visibility;
// "public", "private"
@override final  UserModel createdBy;
@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
 final  List<String>? _objectives;
@override List<String>? get objectives {
  final value = _objectives;
  if (value == null) return null;
  if (_objectives is EqualUnmodifiableListView) return _objectives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  AiPersona aiPersona;
@override final  String? openingPrompt;
@override final  String? closingPrompt;
@override final  Metadata metadata;
 final  List<Round> _structure;
@override List<Round> get structure {
  if (_structure is EqualUnmodifiableListView) return _structure;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_structure);
}


/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScenarioModelCopyWith<_ScenarioModel> get copyWith => __$ScenarioModelCopyWithImpl<_ScenarioModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScenarioModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScenarioModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.language, language) || other.language == language)&&(identical(other.status, status) || other.status == status)&&(identical(other.visibility, visibility) || other.visibility == visibility)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._objectives, _objectives)&&(identical(other.aiPersona, aiPersona) || other.aiPersona == aiPersona)&&(identical(other.openingPrompt, openingPrompt) || other.openingPrompt == openingPrompt)&&(identical(other.closingPrompt, closingPrompt) || other.closingPrompt == closingPrompt)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&const DeepCollectionEquality().equals(other._structure, _structure));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,subtitle,description,category,const DeepCollectionEquality().hash(_tags),language,status,visibility,createdBy,createdAt,updatedAt,const DeepCollectionEquality().hash(_objectives),aiPersona,openingPrompt,closingPrompt,metadata,const DeepCollectionEquality().hash(_structure));

@override
String toString() {
  return 'ScenarioModel(id: $id, title: $title, subtitle: $subtitle, description: $description, category: $category, tags: $tags, language: $language, status: $status, visibility: $visibility, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, objectives: $objectives, aiPersona: $aiPersona, openingPrompt: $openingPrompt, closingPrompt: $closingPrompt, metadata: $metadata, structure: $structure)';
}


}

/// @nodoc
abstract mixin class _$ScenarioModelCopyWith<$Res> implements $ScenarioModelCopyWith<$Res> {
  factory _$ScenarioModelCopyWith(_ScenarioModel value, $Res Function(_ScenarioModel) _then) = __$ScenarioModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? subtitle, String? description, String category, List<String>? tags, String? language, String status, String visibility, UserModel createdBy, DateTime createdAt, DateTime? updatedAt, List<String>? objectives, AiPersona aiPersona, String? openingPrompt, String? closingPrompt, Metadata metadata, List<Round> structure
});


@override $UserModelCopyWith<$Res> get createdBy;@override $AiPersonaCopyWith<$Res> get aiPersona;@override $MetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$ScenarioModelCopyWithImpl<$Res>
    implements _$ScenarioModelCopyWith<$Res> {
  __$ScenarioModelCopyWithImpl(this._self, this._then);

  final _ScenarioModel _self;
  final $Res Function(_ScenarioModel) _then;

/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? subtitle = freezed,Object? description = freezed,Object? category = null,Object? tags = freezed,Object? language = freezed,Object? status = null,Object? visibility = null,Object? createdBy = null,Object? createdAt = null,Object? updatedAt = freezed,Object? objectives = freezed,Object? aiPersona = null,Object? openingPrompt = freezed,Object? closingPrompt = freezed,Object? metadata = null,Object? structure = null,}) {
  return _then(_ScenarioModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: freezed == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,tags: freezed == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,visibility: null == visibility ? _self.visibility : visibility // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as UserModel,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,objectives: freezed == objectives ? _self._objectives : objectives // ignore: cast_nullable_to_non_nullable
as List<String>?,aiPersona: null == aiPersona ? _self.aiPersona : aiPersona // ignore: cast_nullable_to_non_nullable
as AiPersona,openingPrompt: freezed == openingPrompt ? _self.openingPrompt : openingPrompt // ignore: cast_nullable_to_non_nullable
as String?,closingPrompt: freezed == closingPrompt ? _self.closingPrompt : closingPrompt // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Metadata,structure: null == structure ? _self._structure : structure // ignore: cast_nullable_to_non_nullable
as List<Round>,
  ));
}

/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get createdBy {
  
  return $UserModelCopyWith<$Res>(_self.createdBy, (value) {
    return _then(_self.copyWith(createdBy: value));
  });
}/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AiPersonaCopyWith<$Res> get aiPersona {
  
  return $AiPersonaCopyWith<$Res>(_self.aiPersona, (value) {
    return _then(_self.copyWith(aiPersona: value));
  });
}/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetadataCopyWith<$Res> get metadata {
  
  return $MetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// @nodoc
mixin _$UserModel {

 String get id; String get name; String? get email; String? get role;
/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserModelCopyWith<UserModel> get copyWith => _$UserModelCopyWithImpl<UserModel>(this as UserModel, _$identity);

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role);

@override
String toString() {
  return 'UserModel(id: $id, name: $name, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class $UserModelCopyWith<$Res>  {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) _then) = _$UserModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? email, String? role
});




}
/// @nodoc
class _$UserModelCopyWithImpl<$Res>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._self, this._then);

  final UserModel _self;
  final $Res Function(UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = freezed,Object? role = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserModel].
extension UserModelPatterns on UserModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserModel value)  $default,){
final _that = this;
switch (_that) {
case _UserModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? email,  String? role)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? email,  String? role)  $default,) {final _that = this;
switch (_that) {
case _UserModel():
return $default(_that.id,_that.name,_that.email,_that.role);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? email,  String? role)?  $default,) {final _that = this;
switch (_that) {
case _UserModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserModel implements UserModel {
  const _UserModel({required this.id, required this.name, this.email, this.role});
  factory _UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? email;
@override final  String? role;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserModelCopyWith<_UserModel> get copyWith => __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,role);

@override
String toString() {
  return 'UserModel(id: $id, name: $name, email: $email, role: $role)';
}


}

/// @nodoc
abstract mixin class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(_UserModel value, $Res Function(_UserModel) _then) = __$UserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? email, String? role
});




}
/// @nodoc
class __$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(this._self, this._then);

  final _UserModel _self;
  final $Res Function(_UserModel) _then;

/// Create a copy of UserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = freezed,Object? role = freezed,}) {
  return _then(_UserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AiPersona {

 String get name; String get role; String? get personality; String? get voiceProfile; String get responseStyle;// "empathetic", "short", itd.
 EmotionModel get emotionModel; int get maxResponseLength;
/// Create a copy of AiPersona
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AiPersonaCopyWith<AiPersona> get copyWith => _$AiPersonaCopyWithImpl<AiPersona>(this as AiPersona, _$identity);

  /// Serializes this AiPersona to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AiPersona&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.personality, personality) || other.personality == personality)&&(identical(other.voiceProfile, voiceProfile) || other.voiceProfile == voiceProfile)&&(identical(other.responseStyle, responseStyle) || other.responseStyle == responseStyle)&&(identical(other.emotionModel, emotionModel) || other.emotionModel == emotionModel)&&(identical(other.maxResponseLength, maxResponseLength) || other.maxResponseLength == maxResponseLength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,personality,voiceProfile,responseStyle,emotionModel,maxResponseLength);

@override
String toString() {
  return 'AiPersona(name: $name, role: $role, personality: $personality, voiceProfile: $voiceProfile, responseStyle: $responseStyle, emotionModel: $emotionModel, maxResponseLength: $maxResponseLength)';
}


}

/// @nodoc
abstract mixin class $AiPersonaCopyWith<$Res>  {
  factory $AiPersonaCopyWith(AiPersona value, $Res Function(AiPersona) _then) = _$AiPersonaCopyWithImpl;
@useResult
$Res call({
 String name, String role, String? personality, String? voiceProfile, String responseStyle, EmotionModel emotionModel, int maxResponseLength
});


$EmotionModelCopyWith<$Res> get emotionModel;

}
/// @nodoc
class _$AiPersonaCopyWithImpl<$Res>
    implements $AiPersonaCopyWith<$Res> {
  _$AiPersonaCopyWithImpl(this._self, this._then);

  final AiPersona _self;
  final $Res Function(AiPersona) _then;

/// Create a copy of AiPersona
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? role = null,Object? personality = freezed,Object? voiceProfile = freezed,Object? responseStyle = null,Object? emotionModel = null,Object? maxResponseLength = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,personality: freezed == personality ? _self.personality : personality // ignore: cast_nullable_to_non_nullable
as String?,voiceProfile: freezed == voiceProfile ? _self.voiceProfile : voiceProfile // ignore: cast_nullable_to_non_nullable
as String?,responseStyle: null == responseStyle ? _self.responseStyle : responseStyle // ignore: cast_nullable_to_non_nullable
as String,emotionModel: null == emotionModel ? _self.emotionModel : emotionModel // ignore: cast_nullable_to_non_nullable
as EmotionModel,maxResponseLength: null == maxResponseLength ? _self.maxResponseLength : maxResponseLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of AiPersona
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmotionModelCopyWith<$Res> get emotionModel {
  
  return $EmotionModelCopyWith<$Res>(_self.emotionModel, (value) {
    return _then(_self.copyWith(emotionModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [AiPersona].
extension AiPersonaPatterns on AiPersona {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AiPersona value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AiPersona() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AiPersona value)  $default,){
final _that = this;
switch (_that) {
case _AiPersona():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AiPersona value)?  $default,){
final _that = this;
switch (_that) {
case _AiPersona() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String role,  String? personality,  String? voiceProfile,  String responseStyle,  EmotionModel emotionModel,  int maxResponseLength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AiPersona() when $default != null:
return $default(_that.name,_that.role,_that.personality,_that.voiceProfile,_that.responseStyle,_that.emotionModel,_that.maxResponseLength);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String role,  String? personality,  String? voiceProfile,  String responseStyle,  EmotionModel emotionModel,  int maxResponseLength)  $default,) {final _that = this;
switch (_that) {
case _AiPersona():
return $default(_that.name,_that.role,_that.personality,_that.voiceProfile,_that.responseStyle,_that.emotionModel,_that.maxResponseLength);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String role,  String? personality,  String? voiceProfile,  String responseStyle,  EmotionModel emotionModel,  int maxResponseLength)?  $default,) {final _that = this;
switch (_that) {
case _AiPersona() when $default != null:
return $default(_that.name,_that.role,_that.personality,_that.voiceProfile,_that.responseStyle,_that.emotionModel,_that.maxResponseLength);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AiPersona implements AiPersona {
  const _AiPersona({required this.name, required this.role, this.personality, this.voiceProfile, this.responseStyle = "realistic", required this.emotionModel, this.maxResponseLength = 512});
  factory _AiPersona.fromJson(Map<String, dynamic> json) => _$AiPersonaFromJson(json);

@override final  String name;
@override final  String role;
@override final  String? personality;
@override final  String? voiceProfile;
@override@JsonKey() final  String responseStyle;
// "empathetic", "short", itd.
@override final  EmotionModel emotionModel;
@override@JsonKey() final  int maxResponseLength;

/// Create a copy of AiPersona
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AiPersonaCopyWith<_AiPersona> get copyWith => __$AiPersonaCopyWithImpl<_AiPersona>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AiPersonaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AiPersona&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.personality, personality) || other.personality == personality)&&(identical(other.voiceProfile, voiceProfile) || other.voiceProfile == voiceProfile)&&(identical(other.responseStyle, responseStyle) || other.responseStyle == responseStyle)&&(identical(other.emotionModel, emotionModel) || other.emotionModel == emotionModel)&&(identical(other.maxResponseLength, maxResponseLength) || other.maxResponseLength == maxResponseLength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,role,personality,voiceProfile,responseStyle,emotionModel,maxResponseLength);

@override
String toString() {
  return 'AiPersona(name: $name, role: $role, personality: $personality, voiceProfile: $voiceProfile, responseStyle: $responseStyle, emotionModel: $emotionModel, maxResponseLength: $maxResponseLength)';
}


}

/// @nodoc
abstract mixin class _$AiPersonaCopyWith<$Res> implements $AiPersonaCopyWith<$Res> {
  factory _$AiPersonaCopyWith(_AiPersona value, $Res Function(_AiPersona) _then) = __$AiPersonaCopyWithImpl;
@override @useResult
$Res call({
 String name, String role, String? personality, String? voiceProfile, String responseStyle, EmotionModel emotionModel, int maxResponseLength
});


@override $EmotionModelCopyWith<$Res> get emotionModel;

}
/// @nodoc
class __$AiPersonaCopyWithImpl<$Res>
    implements _$AiPersonaCopyWith<$Res> {
  __$AiPersonaCopyWithImpl(this._self, this._then);

  final _AiPersona _self;
  final $Res Function(_AiPersona) _then;

/// Create a copy of AiPersona
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? role = null,Object? personality = freezed,Object? voiceProfile = freezed,Object? responseStyle = null,Object? emotionModel = null,Object? maxResponseLength = null,}) {
  return _then(_AiPersona(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,personality: freezed == personality ? _self.personality : personality // ignore: cast_nullable_to_non_nullable
as String?,voiceProfile: freezed == voiceProfile ? _self.voiceProfile : voiceProfile // ignore: cast_nullable_to_non_nullable
as String?,responseStyle: null == responseStyle ? _self.responseStyle : responseStyle // ignore: cast_nullable_to_non_nullable
as String,emotionModel: null == emotionModel ? _self.emotionModel : emotionModel // ignore: cast_nullable_to_non_nullable
as EmotionModel,maxResponseLength: null == maxResponseLength ? _self.maxResponseLength : maxResponseLength // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of AiPersona
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EmotionModelCopyWith<$Res> get emotionModel {
  
  return $EmotionModelCopyWith<$Res>(_self.emotionModel, (value) {
    return _then(_self.copyWith(emotionModel: value));
  });
}
}


/// @nodoc
mixin _$EmotionModel {

 String get baseline; bool get adaptToUserEmotion;
/// Create a copy of EmotionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmotionModelCopyWith<EmotionModel> get copyWith => _$EmotionModelCopyWithImpl<EmotionModel>(this as EmotionModel, _$identity);

  /// Serializes this EmotionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmotionModel&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.adaptToUserEmotion, adaptToUserEmotion) || other.adaptToUserEmotion == adaptToUserEmotion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseline,adaptToUserEmotion);

@override
String toString() {
  return 'EmotionModel(baseline: $baseline, adaptToUserEmotion: $adaptToUserEmotion)';
}


}

/// @nodoc
abstract mixin class $EmotionModelCopyWith<$Res>  {
  factory $EmotionModelCopyWith(EmotionModel value, $Res Function(EmotionModel) _then) = _$EmotionModelCopyWithImpl;
@useResult
$Res call({
 String baseline, bool adaptToUserEmotion
});




}
/// @nodoc
class _$EmotionModelCopyWithImpl<$Res>
    implements $EmotionModelCopyWith<$Res> {
  _$EmotionModelCopyWithImpl(this._self, this._then);

  final EmotionModel _self;
  final $Res Function(EmotionModel) _then;

/// Create a copy of EmotionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseline = null,Object? adaptToUserEmotion = null,}) {
  return _then(_self.copyWith(
baseline: null == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as String,adaptToUserEmotion: null == adaptToUserEmotion ? _self.adaptToUserEmotion : adaptToUserEmotion // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EmotionModel].
extension EmotionModelPatterns on EmotionModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmotionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmotionModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmotionModel value)  $default,){
final _that = this;
switch (_that) {
case _EmotionModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmotionModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmotionModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String baseline,  bool adaptToUserEmotion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmotionModel() when $default != null:
return $default(_that.baseline,_that.adaptToUserEmotion);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String baseline,  bool adaptToUserEmotion)  $default,) {final _that = this;
switch (_that) {
case _EmotionModel():
return $default(_that.baseline,_that.adaptToUserEmotion);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String baseline,  bool adaptToUserEmotion)?  $default,) {final _that = this;
switch (_that) {
case _EmotionModel() when $default != null:
return $default(_that.baseline,_that.adaptToUserEmotion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmotionModel implements EmotionModel {
  const _EmotionModel({this.baseline = "neutral", this.adaptToUserEmotion = true});
  factory _EmotionModel.fromJson(Map<String, dynamic> json) => _$EmotionModelFromJson(json);

@override@JsonKey() final  String baseline;
@override@JsonKey() final  bool adaptToUserEmotion;

/// Create a copy of EmotionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmotionModelCopyWith<_EmotionModel> get copyWith => __$EmotionModelCopyWithImpl<_EmotionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmotionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmotionModel&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.adaptToUserEmotion, adaptToUserEmotion) || other.adaptToUserEmotion == adaptToUserEmotion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseline,adaptToUserEmotion);

@override
String toString() {
  return 'EmotionModel(baseline: $baseline, adaptToUserEmotion: $adaptToUserEmotion)';
}


}

/// @nodoc
abstract mixin class _$EmotionModelCopyWith<$Res> implements $EmotionModelCopyWith<$Res> {
  factory _$EmotionModelCopyWith(_EmotionModel value, $Res Function(_EmotionModel) _then) = __$EmotionModelCopyWithImpl;
@override @useResult
$Res call({
 String baseline, bool adaptToUserEmotion
});




}
/// @nodoc
class __$EmotionModelCopyWithImpl<$Res>
    implements _$EmotionModelCopyWith<$Res> {
  __$EmotionModelCopyWithImpl(this._self, this._then);

  final _EmotionModel _self;
  final $Res Function(_EmotionModel) _then;

/// Create a copy of EmotionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseline = null,Object? adaptToUserEmotion = null,}) {
  return _then(_EmotionModel(
baseline: null == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as String,adaptToUserEmotion: null == adaptToUserEmotion ? _self.adaptToUserEmotion : adaptToUserEmotion // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Metadata {

 String? get platformVersion; String? get engine; String? get audioFormat; int? get maxRounds; String? get minVersionRequired; bool get tagsSearchable;
/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MetadataCopyWith<Metadata> get copyWith => _$MetadataCopyWithImpl<Metadata>(this as Metadata, _$identity);

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Metadata&&(identical(other.platformVersion, platformVersion) || other.platformVersion == platformVersion)&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.audioFormat, audioFormat) || other.audioFormat == audioFormat)&&(identical(other.maxRounds, maxRounds) || other.maxRounds == maxRounds)&&(identical(other.minVersionRequired, minVersionRequired) || other.minVersionRequired == minVersionRequired)&&(identical(other.tagsSearchable, tagsSearchable) || other.tagsSearchable == tagsSearchable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platformVersion,engine,audioFormat,maxRounds,minVersionRequired,tagsSearchable);

@override
String toString() {
  return 'Metadata(platformVersion: $platformVersion, engine: $engine, audioFormat: $audioFormat, maxRounds: $maxRounds, minVersionRequired: $minVersionRequired, tagsSearchable: $tagsSearchable)';
}


}

/// @nodoc
abstract mixin class $MetadataCopyWith<$Res>  {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) _then) = _$MetadataCopyWithImpl;
@useResult
$Res call({
 String? platformVersion, String? engine, String? audioFormat, int? maxRounds, String? minVersionRequired, bool tagsSearchable
});




}
/// @nodoc
class _$MetadataCopyWithImpl<$Res>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._self, this._then);

  final Metadata _self;
  final $Res Function(Metadata) _then;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? platformVersion = freezed,Object? engine = freezed,Object? audioFormat = freezed,Object? maxRounds = freezed,Object? minVersionRequired = freezed,Object? tagsSearchable = null,}) {
  return _then(_self.copyWith(
platformVersion: freezed == platformVersion ? _self.platformVersion : platformVersion // ignore: cast_nullable_to_non_nullable
as String?,engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as String?,audioFormat: freezed == audioFormat ? _self.audioFormat : audioFormat // ignore: cast_nullable_to_non_nullable
as String?,maxRounds: freezed == maxRounds ? _self.maxRounds : maxRounds // ignore: cast_nullable_to_non_nullable
as int?,minVersionRequired: freezed == minVersionRequired ? _self.minVersionRequired : minVersionRequired // ignore: cast_nullable_to_non_nullable
as String?,tagsSearchable: null == tagsSearchable ? _self.tagsSearchable : tagsSearchable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [Metadata].
extension MetadataPatterns on Metadata {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Metadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Metadata() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Metadata value)  $default,){
final _that = this;
switch (_that) {
case _Metadata():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Metadata value)?  $default,){
final _that = this;
switch (_that) {
case _Metadata() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? platformVersion,  String? engine,  String? audioFormat,  int? maxRounds,  String? minVersionRequired,  bool tagsSearchable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Metadata() when $default != null:
return $default(_that.platformVersion,_that.engine,_that.audioFormat,_that.maxRounds,_that.minVersionRequired,_that.tagsSearchable);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? platformVersion,  String? engine,  String? audioFormat,  int? maxRounds,  String? minVersionRequired,  bool tagsSearchable)  $default,) {final _that = this;
switch (_that) {
case _Metadata():
return $default(_that.platformVersion,_that.engine,_that.audioFormat,_that.maxRounds,_that.minVersionRequired,_that.tagsSearchable);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? platformVersion,  String? engine,  String? audioFormat,  int? maxRounds,  String? minVersionRequired,  bool tagsSearchable)?  $default,) {final _that = this;
switch (_that) {
case _Metadata() when $default != null:
return $default(_that.platformVersion,_that.engine,_that.audioFormat,_that.maxRounds,_that.minVersionRequired,_that.tagsSearchable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Metadata implements Metadata {
  const _Metadata({this.platformVersion, this.engine, this.audioFormat, this.maxRounds, this.minVersionRequired, this.tagsSearchable = true});
  factory _Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

@override final  String? platformVersion;
@override final  String? engine;
@override final  String? audioFormat;
@override final  int? maxRounds;
@override final  String? minVersionRequired;
@override@JsonKey() final  bool tagsSearchable;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MetadataCopyWith<_Metadata> get copyWith => __$MetadataCopyWithImpl<_Metadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Metadata&&(identical(other.platformVersion, platformVersion) || other.platformVersion == platformVersion)&&(identical(other.engine, engine) || other.engine == engine)&&(identical(other.audioFormat, audioFormat) || other.audioFormat == audioFormat)&&(identical(other.maxRounds, maxRounds) || other.maxRounds == maxRounds)&&(identical(other.minVersionRequired, minVersionRequired) || other.minVersionRequired == minVersionRequired)&&(identical(other.tagsSearchable, tagsSearchable) || other.tagsSearchable == tagsSearchable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,platformVersion,engine,audioFormat,maxRounds,minVersionRequired,tagsSearchable);

@override
String toString() {
  return 'Metadata(platformVersion: $platformVersion, engine: $engine, audioFormat: $audioFormat, maxRounds: $maxRounds, minVersionRequired: $minVersionRequired, tagsSearchable: $tagsSearchable)';
}


}

/// @nodoc
abstract mixin class _$MetadataCopyWith<$Res> implements $MetadataCopyWith<$Res> {
  factory _$MetadataCopyWith(_Metadata value, $Res Function(_Metadata) _then) = __$MetadataCopyWithImpl;
@override @useResult
$Res call({
 String? platformVersion, String? engine, String? audioFormat, int? maxRounds, String? minVersionRequired, bool tagsSearchable
});




}
/// @nodoc
class __$MetadataCopyWithImpl<$Res>
    implements _$MetadataCopyWith<$Res> {
  __$MetadataCopyWithImpl(this._self, this._then);

  final _Metadata _self;
  final $Res Function(_Metadata) _then;

/// Create a copy of Metadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? platformVersion = freezed,Object? engine = freezed,Object? audioFormat = freezed,Object? maxRounds = freezed,Object? minVersionRequired = freezed,Object? tagsSearchable = null,}) {
  return _then(_Metadata(
platformVersion: freezed == platformVersion ? _self.platformVersion : platformVersion // ignore: cast_nullable_to_non_nullable
as String?,engine: freezed == engine ? _self.engine : engine // ignore: cast_nullable_to_non_nullable
as String?,audioFormat: freezed == audioFormat ? _self.audioFormat : audioFormat // ignore: cast_nullable_to_non_nullable
as String?,maxRounds: freezed == maxRounds ? _self.maxRounds : maxRounds // ignore: cast_nullable_to_non_nullable
as int?,minVersionRequired: freezed == minVersionRequired ? _self.minVersionRequired : minVersionRequired // ignore: cast_nullable_to_non_nullable
as String?,tagsSearchable: null == tagsSearchable ? _self.tagsSearchable : tagsSearchable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$Round {

 String get id; String get aiPrompt; String get expectedResponseType;// "argument", "emocja", itd.
 String get aiEmotion; String? get userEmotionTarget; List<String>? get tips; List<String>? get keywordsRequired; List<String>? get forbiddenKeywords;
/// Create a copy of Round
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RoundCopyWith<Round> get copyWith => _$RoundCopyWithImpl<Round>(this as Round, _$identity);

  /// Serializes this Round to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Round&&(identical(other.id, id) || other.id == id)&&(identical(other.aiPrompt, aiPrompt) || other.aiPrompt == aiPrompt)&&(identical(other.expectedResponseType, expectedResponseType) || other.expectedResponseType == expectedResponseType)&&(identical(other.aiEmotion, aiEmotion) || other.aiEmotion == aiEmotion)&&(identical(other.userEmotionTarget, userEmotionTarget) || other.userEmotionTarget == userEmotionTarget)&&const DeepCollectionEquality().equals(other.tips, tips)&&const DeepCollectionEquality().equals(other.keywordsRequired, keywordsRequired)&&const DeepCollectionEquality().equals(other.forbiddenKeywords, forbiddenKeywords));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,aiPrompt,expectedResponseType,aiEmotion,userEmotionTarget,const DeepCollectionEquality().hash(tips),const DeepCollectionEquality().hash(keywordsRequired),const DeepCollectionEquality().hash(forbiddenKeywords));

@override
String toString() {
  return 'Round(id: $id, aiPrompt: $aiPrompt, expectedResponseType: $expectedResponseType, aiEmotion: $aiEmotion, userEmotionTarget: $userEmotionTarget, tips: $tips, keywordsRequired: $keywordsRequired, forbiddenKeywords: $forbiddenKeywords)';
}


}

/// @nodoc
abstract mixin class $RoundCopyWith<$Res>  {
  factory $RoundCopyWith(Round value, $Res Function(Round) _then) = _$RoundCopyWithImpl;
@useResult
$Res call({
 String id, String aiPrompt, String expectedResponseType, String aiEmotion, String? userEmotionTarget, List<String>? tips, List<String>? keywordsRequired, List<String>? forbiddenKeywords
});




}
/// @nodoc
class _$RoundCopyWithImpl<$Res>
    implements $RoundCopyWith<$Res> {
  _$RoundCopyWithImpl(this._self, this._then);

  final Round _self;
  final $Res Function(Round) _then;

/// Create a copy of Round
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? aiPrompt = null,Object? expectedResponseType = null,Object? aiEmotion = null,Object? userEmotionTarget = freezed,Object? tips = freezed,Object? keywordsRequired = freezed,Object? forbiddenKeywords = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,aiPrompt: null == aiPrompt ? _self.aiPrompt : aiPrompt // ignore: cast_nullable_to_non_nullable
as String,expectedResponseType: null == expectedResponseType ? _self.expectedResponseType : expectedResponseType // ignore: cast_nullable_to_non_nullable
as String,aiEmotion: null == aiEmotion ? _self.aiEmotion : aiEmotion // ignore: cast_nullable_to_non_nullable
as String,userEmotionTarget: freezed == userEmotionTarget ? _self.userEmotionTarget : userEmotionTarget // ignore: cast_nullable_to_non_nullable
as String?,tips: freezed == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as List<String>?,keywordsRequired: freezed == keywordsRequired ? _self.keywordsRequired : keywordsRequired // ignore: cast_nullable_to_non_nullable
as List<String>?,forbiddenKeywords: freezed == forbiddenKeywords ? _self.forbiddenKeywords : forbiddenKeywords // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Round].
extension RoundPatterns on Round {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Round value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Round() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Round value)  $default,){
final _that = this;
switch (_that) {
case _Round():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Round value)?  $default,){
final _that = this;
switch (_that) {
case _Round() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String aiPrompt,  String expectedResponseType,  String aiEmotion,  String? userEmotionTarget,  List<String>? tips,  List<String>? keywordsRequired,  List<String>? forbiddenKeywords)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Round() when $default != null:
return $default(_that.id,_that.aiPrompt,_that.expectedResponseType,_that.aiEmotion,_that.userEmotionTarget,_that.tips,_that.keywordsRequired,_that.forbiddenKeywords);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String aiPrompt,  String expectedResponseType,  String aiEmotion,  String? userEmotionTarget,  List<String>? tips,  List<String>? keywordsRequired,  List<String>? forbiddenKeywords)  $default,) {final _that = this;
switch (_that) {
case _Round():
return $default(_that.id,_that.aiPrompt,_that.expectedResponseType,_that.aiEmotion,_that.userEmotionTarget,_that.tips,_that.keywordsRequired,_that.forbiddenKeywords);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String aiPrompt,  String expectedResponseType,  String aiEmotion,  String? userEmotionTarget,  List<String>? tips,  List<String>? keywordsRequired,  List<String>? forbiddenKeywords)?  $default,) {final _that = this;
switch (_that) {
case _Round() when $default != null:
return $default(_that.id,_that.aiPrompt,_that.expectedResponseType,_that.aiEmotion,_that.userEmotionTarget,_that.tips,_that.keywordsRequired,_that.forbiddenKeywords);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Round implements Round {
  const _Round({required this.id, required this.aiPrompt, required this.expectedResponseType, this.aiEmotion = "neutral", this.userEmotionTarget, final  List<String>? tips, final  List<String>? keywordsRequired, final  List<String>? forbiddenKeywords}): _tips = tips,_keywordsRequired = keywordsRequired,_forbiddenKeywords = forbiddenKeywords;
  factory _Round.fromJson(Map<String, dynamic> json) => _$RoundFromJson(json);

@override final  String id;
@override final  String aiPrompt;
@override final  String expectedResponseType;
// "argument", "emocja", itd.
@override@JsonKey() final  String aiEmotion;
@override final  String? userEmotionTarget;
 final  List<String>? _tips;
@override List<String>? get tips {
  final value = _tips;
  if (value == null) return null;
  if (_tips is EqualUnmodifiableListView) return _tips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _keywordsRequired;
@override List<String>? get keywordsRequired {
  final value = _keywordsRequired;
  if (value == null) return null;
  if (_keywordsRequired is EqualUnmodifiableListView) return _keywordsRequired;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _forbiddenKeywords;
@override List<String>? get forbiddenKeywords {
  final value = _forbiddenKeywords;
  if (value == null) return null;
  if (_forbiddenKeywords is EqualUnmodifiableListView) return _forbiddenKeywords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Round
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RoundCopyWith<_Round> get copyWith => __$RoundCopyWithImpl<_Round>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RoundToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Round&&(identical(other.id, id) || other.id == id)&&(identical(other.aiPrompt, aiPrompt) || other.aiPrompt == aiPrompt)&&(identical(other.expectedResponseType, expectedResponseType) || other.expectedResponseType == expectedResponseType)&&(identical(other.aiEmotion, aiEmotion) || other.aiEmotion == aiEmotion)&&(identical(other.userEmotionTarget, userEmotionTarget) || other.userEmotionTarget == userEmotionTarget)&&const DeepCollectionEquality().equals(other._tips, _tips)&&const DeepCollectionEquality().equals(other._keywordsRequired, _keywordsRequired)&&const DeepCollectionEquality().equals(other._forbiddenKeywords, _forbiddenKeywords));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,aiPrompt,expectedResponseType,aiEmotion,userEmotionTarget,const DeepCollectionEquality().hash(_tips),const DeepCollectionEquality().hash(_keywordsRequired),const DeepCollectionEquality().hash(_forbiddenKeywords));

@override
String toString() {
  return 'Round(id: $id, aiPrompt: $aiPrompt, expectedResponseType: $expectedResponseType, aiEmotion: $aiEmotion, userEmotionTarget: $userEmotionTarget, tips: $tips, keywordsRequired: $keywordsRequired, forbiddenKeywords: $forbiddenKeywords)';
}


}

/// @nodoc
abstract mixin class _$RoundCopyWith<$Res> implements $RoundCopyWith<$Res> {
  factory _$RoundCopyWith(_Round value, $Res Function(_Round) _then) = __$RoundCopyWithImpl;
@override @useResult
$Res call({
 String id, String aiPrompt, String expectedResponseType, String aiEmotion, String? userEmotionTarget, List<String>? tips, List<String>? keywordsRequired, List<String>? forbiddenKeywords
});




}
/// @nodoc
class __$RoundCopyWithImpl<$Res>
    implements _$RoundCopyWith<$Res> {
  __$RoundCopyWithImpl(this._self, this._then);

  final _Round _self;
  final $Res Function(_Round) _then;

/// Create a copy of Round
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? aiPrompt = null,Object? expectedResponseType = null,Object? aiEmotion = null,Object? userEmotionTarget = freezed,Object? tips = freezed,Object? keywordsRequired = freezed,Object? forbiddenKeywords = freezed,}) {
  return _then(_Round(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,aiPrompt: null == aiPrompt ? _self.aiPrompt : aiPrompt // ignore: cast_nullable_to_non_nullable
as String,expectedResponseType: null == expectedResponseType ? _self.expectedResponseType : expectedResponseType // ignore: cast_nullable_to_non_nullable
as String,aiEmotion: null == aiEmotion ? _self.aiEmotion : aiEmotion // ignore: cast_nullable_to_non_nullable
as String,userEmotionTarget: freezed == userEmotionTarget ? _self.userEmotionTarget : userEmotionTarget // ignore: cast_nullable_to_non_nullable
as String?,tips: freezed == tips ? _self._tips : tips // ignore: cast_nullable_to_non_nullable
as List<String>?,keywordsRequired: freezed == keywordsRequired ? _self._keywordsRequired : keywordsRequired // ignore: cast_nullable_to_non_nullable
as List<String>?,forbiddenKeywords: freezed == forbiddenKeywords ? _self._forbiddenKeywords : forbiddenKeywords // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

// dart format on
