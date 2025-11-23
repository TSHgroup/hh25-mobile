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

 String get title; String get subtitle; String get description; String get category; List<String> get tags; List<String> get languages; String get status; String get createdBy; String get lastUpdatedAt; List<String> get objectives; String get persona; ScenarioAiModel get ai; List<ScenarioRoundModel> get rounds; String? get openingPrompt;@JsonKey(name: '_id') String get id; String get createdAt;
/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScenarioModelCopyWith<ScenarioModel> get copyWith => _$ScenarioModelCopyWithImpl<ScenarioModel>(this as ScenarioModel, _$identity);

  /// Serializes this ScenarioModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScenarioModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&const DeepCollectionEquality().equals(other.objectives, objectives)&&(identical(other.persona, persona) || other.persona == persona)&&(identical(other.ai, ai) || other.ai == ai)&&const DeepCollectionEquality().equals(other.rounds, rounds)&&(identical(other.openingPrompt, openingPrompt) || other.openingPrompt == openingPrompt)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,description,category,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(languages),status,createdBy,lastUpdatedAt,const DeepCollectionEquality().hash(objectives),persona,ai,const DeepCollectionEquality().hash(rounds),openingPrompt,id,createdAt);

@override
String toString() {
  return 'ScenarioModel(title: $title, subtitle: $subtitle, description: $description, category: $category, tags: $tags, languages: $languages, status: $status, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, objectives: $objectives, persona: $persona, ai: $ai, rounds: $rounds, openingPrompt: $openingPrompt, id: $id, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ScenarioModelCopyWith<$Res>  {
  factory $ScenarioModelCopyWith(ScenarioModel value, $Res Function(ScenarioModel) _then) = _$ScenarioModelCopyWithImpl;
@useResult
$Res call({
 String title, String subtitle, String description, String category, List<String> tags, List<String> languages, String status, String createdBy, String lastUpdatedAt, List<String> objectives, String persona, ScenarioAiModel ai, List<ScenarioRoundModel> rounds, String? openingPrompt,@JsonKey(name: '_id') String id, String createdAt
});


$ScenarioAiModelCopyWith<$Res> get ai;

}
/// @nodoc
class _$ScenarioModelCopyWithImpl<$Res>
    implements $ScenarioModelCopyWith<$Res> {
  _$ScenarioModelCopyWithImpl(this._self, this._then);

  final ScenarioModel _self;
  final $Res Function(ScenarioModel) _then;

/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? subtitle = null,Object? description = null,Object? category = null,Object? tags = null,Object? languages = null,Object? status = null,Object? createdBy = null,Object? lastUpdatedAt = null,Object? objectives = null,Object? persona = null,Object? ai = null,Object? rounds = null,Object? openingPrompt = freezed,Object? id = null,Object? createdAt = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,languages: null == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,lastUpdatedAt: null == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String,objectives: null == objectives ? _self.objectives : objectives // ignore: cast_nullable_to_non_nullable
as List<String>,persona: null == persona ? _self.persona : persona // ignore: cast_nullable_to_non_nullable
as String,ai: null == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as ScenarioAiModel,rounds: null == rounds ? _self.rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<ScenarioRoundModel>,openingPrompt: freezed == openingPrompt ? _self.openingPrompt : openingPrompt // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScenarioAiModelCopyWith<$Res> get ai {
  
  return $ScenarioAiModelCopyWith<$Res>(_self.ai, (value) {
    return _then(_self.copyWith(ai: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String subtitle,  String description,  String category,  List<String> tags,  List<String> languages,  String status,  String createdBy,  String lastUpdatedAt,  List<String> objectives,  String persona,  ScenarioAiModel ai,  List<ScenarioRoundModel> rounds,  String? openingPrompt, @JsonKey(name: '_id')  String id,  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScenarioModel() when $default != null:
return $default(_that.title,_that.subtitle,_that.description,_that.category,_that.tags,_that.languages,_that.status,_that.createdBy,_that.lastUpdatedAt,_that.objectives,_that.persona,_that.ai,_that.rounds,_that.openingPrompt,_that.id,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String subtitle,  String description,  String category,  List<String> tags,  List<String> languages,  String status,  String createdBy,  String lastUpdatedAt,  List<String> objectives,  String persona,  ScenarioAiModel ai,  List<ScenarioRoundModel> rounds,  String? openingPrompt, @JsonKey(name: '_id')  String id,  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ScenarioModel():
return $default(_that.title,_that.subtitle,_that.description,_that.category,_that.tags,_that.languages,_that.status,_that.createdBy,_that.lastUpdatedAt,_that.objectives,_that.persona,_that.ai,_that.rounds,_that.openingPrompt,_that.id,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String subtitle,  String description,  String category,  List<String> tags,  List<String> languages,  String status,  String createdBy,  String lastUpdatedAt,  List<String> objectives,  String persona,  ScenarioAiModel ai,  List<ScenarioRoundModel> rounds,  String? openingPrompt, @JsonKey(name: '_id')  String id,  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ScenarioModel() when $default != null:
return $default(_that.title,_that.subtitle,_that.description,_that.category,_that.tags,_that.languages,_that.status,_that.createdBy,_that.lastUpdatedAt,_that.objectives,_that.persona,_that.ai,_that.rounds,_that.openingPrompt,_that.id,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScenarioModel implements ScenarioModel {
   _ScenarioModel({required this.title, required this.subtitle, required this.description, required this.category, required final  List<String> tags, required final  List<String> languages, required this.status, required this.createdBy, required this.lastUpdatedAt, required final  List<String> objectives, required this.persona, required this.ai, required final  List<ScenarioRoundModel> rounds, required this.openingPrompt, @JsonKey(name: '_id') required this.id, required this.createdAt}): _tags = tags,_languages = languages,_objectives = objectives,_rounds = rounds;
  factory _ScenarioModel.fromJson(Map<String, dynamic> json) => _$ScenarioModelFromJson(json);

@override final  String title;
@override final  String subtitle;
@override final  String description;
@override final  String category;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<String> _languages;
@override List<String> get languages {
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_languages);
}

@override final  String status;
@override final  String createdBy;
@override final  String lastUpdatedAt;
 final  List<String> _objectives;
@override List<String> get objectives {
  if (_objectives is EqualUnmodifiableListView) return _objectives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_objectives);
}

@override final  String persona;
@override final  ScenarioAiModel ai;
 final  List<ScenarioRoundModel> _rounds;
@override List<ScenarioRoundModel> get rounds {
  if (_rounds is EqualUnmodifiableListView) return _rounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rounds);
}

@override final  String? openingPrompt;
@override@JsonKey(name: '_id') final  String id;
@override final  String createdAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScenarioModel&&(identical(other.title, title) || other.title == title)&&(identical(other.subtitle, subtitle) || other.subtitle == subtitle)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&const DeepCollectionEquality().equals(other._objectives, _objectives)&&(identical(other.persona, persona) || other.persona == persona)&&(identical(other.ai, ai) || other.ai == ai)&&const DeepCollectionEquality().equals(other._rounds, _rounds)&&(identical(other.openingPrompt, openingPrompt) || other.openingPrompt == openingPrompt)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,subtitle,description,category,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_languages),status,createdBy,lastUpdatedAt,const DeepCollectionEquality().hash(_objectives),persona,ai,const DeepCollectionEquality().hash(_rounds),openingPrompt,id,createdAt);

@override
String toString() {
  return 'ScenarioModel(title: $title, subtitle: $subtitle, description: $description, category: $category, tags: $tags, languages: $languages, status: $status, createdBy: $createdBy, lastUpdatedAt: $lastUpdatedAt, objectives: $objectives, persona: $persona, ai: $ai, rounds: $rounds, openingPrompt: $openingPrompt, id: $id, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ScenarioModelCopyWith<$Res> implements $ScenarioModelCopyWith<$Res> {
  factory _$ScenarioModelCopyWith(_ScenarioModel value, $Res Function(_ScenarioModel) _then) = __$ScenarioModelCopyWithImpl;
@override @useResult
$Res call({
 String title, String subtitle, String description, String category, List<String> tags, List<String> languages, String status, String createdBy, String lastUpdatedAt, List<String> objectives, String persona, ScenarioAiModel ai, List<ScenarioRoundModel> rounds, String? openingPrompt,@JsonKey(name: '_id') String id, String createdAt
});


@override $ScenarioAiModelCopyWith<$Res> get ai;

}
/// @nodoc
class __$ScenarioModelCopyWithImpl<$Res>
    implements _$ScenarioModelCopyWith<$Res> {
  __$ScenarioModelCopyWithImpl(this._self, this._then);

  final _ScenarioModel _self;
  final $Res Function(_ScenarioModel) _then;

/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? subtitle = null,Object? description = null,Object? category = null,Object? tags = null,Object? languages = null,Object? status = null,Object? createdBy = null,Object? lastUpdatedAt = null,Object? objectives = null,Object? persona = null,Object? ai = null,Object? rounds = null,Object? openingPrompt = freezed,Object? id = null,Object? createdAt = null,}) {
  return _then(_ScenarioModel(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,subtitle: null == subtitle ? _self.subtitle : subtitle // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,languages: null == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,lastUpdatedAt: null == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as String,objectives: null == objectives ? _self._objectives : objectives // ignore: cast_nullable_to_non_nullable
as List<String>,persona: null == persona ? _self.persona : persona // ignore: cast_nullable_to_non_nullable
as String,ai: null == ai ? _self.ai : ai // ignore: cast_nullable_to_non_nullable
as ScenarioAiModel,rounds: null == rounds ? _self._rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<ScenarioRoundModel>,openingPrompt: freezed == openingPrompt ? _self.openingPrompt : openingPrompt // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ScenarioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ScenarioAiModelCopyWith<$Res> get ai {
  
  return $ScenarioAiModelCopyWith<$Res>(_self.ai, (value) {
    return _then(_self.copyWith(ai: value));
  });
}
}


/// @nodoc
mixin _$ScenarioRoundModel {

 List<String> get tips; List<String> get keywordsRequired; List<String> get keywordsBanned;@JsonKey(name: '_id') String get id; String get prompt; String? get emotion;
/// Create a copy of ScenarioRoundModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScenarioRoundModelCopyWith<ScenarioRoundModel> get copyWith => _$ScenarioRoundModelCopyWithImpl<ScenarioRoundModel>(this as ScenarioRoundModel, _$identity);

  /// Serializes this ScenarioRoundModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScenarioRoundModel&&const DeepCollectionEquality().equals(other.tips, tips)&&const DeepCollectionEquality().equals(other.keywordsRequired, keywordsRequired)&&const DeepCollectionEquality().equals(other.keywordsBanned, keywordsBanned)&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.emotion, emotion) || other.emotion == emotion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tips),const DeepCollectionEquality().hash(keywordsRequired),const DeepCollectionEquality().hash(keywordsBanned),id,prompt,emotion);

@override
String toString() {
  return 'ScenarioRoundModel(tips: $tips, keywordsRequired: $keywordsRequired, keywordsBanned: $keywordsBanned, id: $id, prompt: $prompt, emotion: $emotion)';
}


}

/// @nodoc
abstract mixin class $ScenarioRoundModelCopyWith<$Res>  {
  factory $ScenarioRoundModelCopyWith(ScenarioRoundModel value, $Res Function(ScenarioRoundModel) _then) = _$ScenarioRoundModelCopyWithImpl;
@useResult
$Res call({
 List<String> tips, List<String> keywordsRequired, List<String> keywordsBanned,@JsonKey(name: '_id') String id, String prompt, String? emotion
});




}
/// @nodoc
class _$ScenarioRoundModelCopyWithImpl<$Res>
    implements $ScenarioRoundModelCopyWith<$Res> {
  _$ScenarioRoundModelCopyWithImpl(this._self, this._then);

  final ScenarioRoundModel _self;
  final $Res Function(ScenarioRoundModel) _then;

/// Create a copy of ScenarioRoundModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tips = null,Object? keywordsRequired = null,Object? keywordsBanned = null,Object? id = null,Object? prompt = null,Object? emotion = freezed,}) {
  return _then(_self.copyWith(
tips: null == tips ? _self.tips : tips // ignore: cast_nullable_to_non_nullable
as List<String>,keywordsRequired: null == keywordsRequired ? _self.keywordsRequired : keywordsRequired // ignore: cast_nullable_to_non_nullable
as List<String>,keywordsBanned: null == keywordsBanned ? _self.keywordsBanned : keywordsBanned // ignore: cast_nullable_to_non_nullable
as List<String>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,emotion: freezed == emotion ? _self.emotion : emotion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ScenarioRoundModel].
extension ScenarioRoundModelPatterns on ScenarioRoundModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScenarioRoundModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScenarioRoundModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScenarioRoundModel value)  $default,){
final _that = this;
switch (_that) {
case _ScenarioRoundModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScenarioRoundModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScenarioRoundModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> tips,  List<String> keywordsRequired,  List<String> keywordsBanned, @JsonKey(name: '_id')  String id,  String prompt,  String? emotion)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScenarioRoundModel() when $default != null:
return $default(_that.tips,_that.keywordsRequired,_that.keywordsBanned,_that.id,_that.prompt,_that.emotion);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> tips,  List<String> keywordsRequired,  List<String> keywordsBanned, @JsonKey(name: '_id')  String id,  String prompt,  String? emotion)  $default,) {final _that = this;
switch (_that) {
case _ScenarioRoundModel():
return $default(_that.tips,_that.keywordsRequired,_that.keywordsBanned,_that.id,_that.prompt,_that.emotion);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> tips,  List<String> keywordsRequired,  List<String> keywordsBanned, @JsonKey(name: '_id')  String id,  String prompt,  String? emotion)?  $default,) {final _that = this;
switch (_that) {
case _ScenarioRoundModel() when $default != null:
return $default(_that.tips,_that.keywordsRequired,_that.keywordsBanned,_that.id,_that.prompt,_that.emotion);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScenarioRoundModel implements ScenarioRoundModel {
   _ScenarioRoundModel({final  List<String> tips = const [], final  List<String> keywordsRequired = const [], final  List<String> keywordsBanned = const [], @JsonKey(name: '_id') required this.id, required this.prompt, required this.emotion}): _tips = tips,_keywordsRequired = keywordsRequired,_keywordsBanned = keywordsBanned;
  factory _ScenarioRoundModel.fromJson(Map<String, dynamic> json) => _$ScenarioRoundModelFromJson(json);

 final  List<String> _tips;
@override@JsonKey() List<String> get tips {
  if (_tips is EqualUnmodifiableListView) return _tips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tips);
}

 final  List<String> _keywordsRequired;
@override@JsonKey() List<String> get keywordsRequired {
  if (_keywordsRequired is EqualUnmodifiableListView) return _keywordsRequired;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keywordsRequired);
}

 final  List<String> _keywordsBanned;
@override@JsonKey() List<String> get keywordsBanned {
  if (_keywordsBanned is EqualUnmodifiableListView) return _keywordsBanned;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keywordsBanned);
}

@override@JsonKey(name: '_id') final  String id;
@override final  String prompt;
@override final  String? emotion;

/// Create a copy of ScenarioRoundModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScenarioRoundModelCopyWith<_ScenarioRoundModel> get copyWith => __$ScenarioRoundModelCopyWithImpl<_ScenarioRoundModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScenarioRoundModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScenarioRoundModel&&const DeepCollectionEquality().equals(other._tips, _tips)&&const DeepCollectionEquality().equals(other._keywordsRequired, _keywordsRequired)&&const DeepCollectionEquality().equals(other._keywordsBanned, _keywordsBanned)&&(identical(other.id, id) || other.id == id)&&(identical(other.prompt, prompt) || other.prompt == prompt)&&(identical(other.emotion, emotion) || other.emotion == emotion));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tips),const DeepCollectionEquality().hash(_keywordsRequired),const DeepCollectionEquality().hash(_keywordsBanned),id,prompt,emotion);

@override
String toString() {
  return 'ScenarioRoundModel(tips: $tips, keywordsRequired: $keywordsRequired, keywordsBanned: $keywordsBanned, id: $id, prompt: $prompt, emotion: $emotion)';
}


}

/// @nodoc
abstract mixin class _$ScenarioRoundModelCopyWith<$Res> implements $ScenarioRoundModelCopyWith<$Res> {
  factory _$ScenarioRoundModelCopyWith(_ScenarioRoundModel value, $Res Function(_ScenarioRoundModel) _then) = __$ScenarioRoundModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> tips, List<String> keywordsRequired, List<String> keywordsBanned,@JsonKey(name: '_id') String id, String prompt, String? emotion
});




}
/// @nodoc
class __$ScenarioRoundModelCopyWithImpl<$Res>
    implements _$ScenarioRoundModelCopyWith<$Res> {
  __$ScenarioRoundModelCopyWithImpl(this._self, this._then);

  final _ScenarioRoundModel _self;
  final $Res Function(_ScenarioRoundModel) _then;

/// Create a copy of ScenarioRoundModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tips = null,Object? keywordsRequired = null,Object? keywordsBanned = null,Object? id = null,Object? prompt = null,Object? emotion = freezed,}) {
  return _then(_ScenarioRoundModel(
tips: null == tips ? _self._tips : tips // ignore: cast_nullable_to_non_nullable
as List<String>,keywordsRequired: null == keywordsRequired ? _self._keywordsRequired : keywordsRequired // ignore: cast_nullable_to_non_nullable
as List<String>,keywordsBanned: null == keywordsBanned ? _self._keywordsBanned : keywordsBanned // ignore: cast_nullable_to_non_nullable
as List<String>,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,prompt: null == prompt ? _self.prompt : prompt // ignore: cast_nullable_to_non_nullable
as String,emotion: freezed == emotion ? _self.emotion : emotion // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ScenarioAiModel {

 String get provider; String get model;@JsonKey(name: '_id') String get id;
/// Create a copy of ScenarioAiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ScenarioAiModelCopyWith<ScenarioAiModel> get copyWith => _$ScenarioAiModelCopyWithImpl<ScenarioAiModel>(this as ScenarioAiModel, _$identity);

  /// Serializes this ScenarioAiModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScenarioAiModel&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.model, model) || other.model == model)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,model,id);

@override
String toString() {
  return 'ScenarioAiModel(provider: $provider, model: $model, id: $id)';
}


}

/// @nodoc
abstract mixin class $ScenarioAiModelCopyWith<$Res>  {
  factory $ScenarioAiModelCopyWith(ScenarioAiModel value, $Res Function(ScenarioAiModel) _then) = _$ScenarioAiModelCopyWithImpl;
@useResult
$Res call({
 String provider, String model,@JsonKey(name: '_id') String id
});




}
/// @nodoc
class _$ScenarioAiModelCopyWithImpl<$Res>
    implements $ScenarioAiModelCopyWith<$Res> {
  _$ScenarioAiModelCopyWithImpl(this._self, this._then);

  final ScenarioAiModel _self;
  final $Res Function(ScenarioAiModel) _then;

/// Create a copy of ScenarioAiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? provider = null,Object? model = null,Object? id = null,}) {
  return _then(_self.copyWith(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ScenarioAiModel].
extension ScenarioAiModelPatterns on ScenarioAiModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ScenarioAiModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ScenarioAiModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ScenarioAiModel value)  $default,){
final _that = this;
switch (_that) {
case _ScenarioAiModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ScenarioAiModel value)?  $default,){
final _that = this;
switch (_that) {
case _ScenarioAiModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String provider,  String model, @JsonKey(name: '_id')  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ScenarioAiModel() when $default != null:
return $default(_that.provider,_that.model,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String provider,  String model, @JsonKey(name: '_id')  String id)  $default,) {final _that = this;
switch (_that) {
case _ScenarioAiModel():
return $default(_that.provider,_that.model,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String provider,  String model, @JsonKey(name: '_id')  String id)?  $default,) {final _that = this;
switch (_that) {
case _ScenarioAiModel() when $default != null:
return $default(_that.provider,_that.model,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ScenarioAiModel implements ScenarioAiModel {
   _ScenarioAiModel({required this.provider, required this.model, @JsonKey(name: '_id') required this.id});
  factory _ScenarioAiModel.fromJson(Map<String, dynamic> json) => _$ScenarioAiModelFromJson(json);

@override final  String provider;
@override final  String model;
@override@JsonKey(name: '_id') final  String id;

/// Create a copy of ScenarioAiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ScenarioAiModelCopyWith<_ScenarioAiModel> get copyWith => __$ScenarioAiModelCopyWithImpl<_ScenarioAiModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ScenarioAiModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ScenarioAiModel&&(identical(other.provider, provider) || other.provider == provider)&&(identical(other.model, model) || other.model == model)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,provider,model,id);

@override
String toString() {
  return 'ScenarioAiModel(provider: $provider, model: $model, id: $id)';
}


}

/// @nodoc
abstract mixin class _$ScenarioAiModelCopyWith<$Res> implements $ScenarioAiModelCopyWith<$Res> {
  factory _$ScenarioAiModelCopyWith(_ScenarioAiModel value, $Res Function(_ScenarioAiModel) _then) = __$ScenarioAiModelCopyWithImpl;
@override @useResult
$Res call({
 String provider, String model,@JsonKey(name: '_id') String id
});




}
/// @nodoc
class __$ScenarioAiModelCopyWithImpl<$Res>
    implements _$ScenarioAiModelCopyWith<$Res> {
  __$ScenarioAiModelCopyWithImpl(this._self, this._then);

  final _ScenarioAiModel _self;
  final $Res Function(_ScenarioAiModel) _then;

/// Create a copy of ScenarioAiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? provider = null,Object? model = null,Object? id = null,}) {
  return _then(_ScenarioAiModel(
provider: null == provider ? _self.provider : provider // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
