// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'persona_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PersonaModel {

@JsonKey(name: '_id') String get id; String get name; String get role; String get personality; String get voice; String get informations; PersonaEmotionModelModel get emotionModel; int get maxResponseTokens; bool get public; String get createdBy;
/// Create a copy of PersonaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonaModelCopyWith<PersonaModel> get copyWith => _$PersonaModelCopyWithImpl<PersonaModel>(this as PersonaModel, _$identity);

  /// Serializes this PersonaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.personality, personality) || other.personality == personality)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.informations, informations) || other.informations == informations)&&(identical(other.emotionModel, emotionModel) || other.emotionModel == emotionModel)&&(identical(other.maxResponseTokens, maxResponseTokens) || other.maxResponseTokens == maxResponseTokens)&&(identical(other.public, public) || other.public == public)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,role,personality,voice,informations,emotionModel,maxResponseTokens,public,createdBy);

@override
String toString() {
  return 'PersonaModel(id: $id, name: $name, role: $role, personality: $personality, voice: $voice, informations: $informations, emotionModel: $emotionModel, maxResponseTokens: $maxResponseTokens, public: $public, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class $PersonaModelCopyWith<$Res>  {
  factory $PersonaModelCopyWith(PersonaModel value, $Res Function(PersonaModel) _then) = _$PersonaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String role, String personality, String voice, String informations, PersonaEmotionModelModel emotionModel, int maxResponseTokens, bool public, String createdBy
});


$PersonaEmotionModelModelCopyWith<$Res> get emotionModel;

}
/// @nodoc
class _$PersonaModelCopyWithImpl<$Res>
    implements $PersonaModelCopyWith<$Res> {
  _$PersonaModelCopyWithImpl(this._self, this._then);

  final PersonaModel _self;
  final $Res Function(PersonaModel) _then;

/// Create a copy of PersonaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? role = null,Object? personality = null,Object? voice = null,Object? informations = null,Object? emotionModel = null,Object? maxResponseTokens = null,Object? public = null,Object? createdBy = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,personality: null == personality ? _self.personality : personality // ignore: cast_nullable_to_non_nullable
as String,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String,informations: null == informations ? _self.informations : informations // ignore: cast_nullable_to_non_nullable
as String,emotionModel: null == emotionModel ? _self.emotionModel : emotionModel // ignore: cast_nullable_to_non_nullable
as PersonaEmotionModelModel,maxResponseTokens: null == maxResponseTokens ? _self.maxResponseTokens : maxResponseTokens // ignore: cast_nullable_to_non_nullable
as int,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of PersonaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonaEmotionModelModelCopyWith<$Res> get emotionModel {
  
  return $PersonaEmotionModelModelCopyWith<$Res>(_self.emotionModel, (value) {
    return _then(_self.copyWith(emotionModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [PersonaModel].
extension PersonaModelPatterns on PersonaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonaModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonaModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String role,  String personality,  String voice,  String informations,  PersonaEmotionModelModel emotionModel,  int maxResponseTokens,  bool public,  String createdBy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonaModel() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.personality,_that.voice,_that.informations,_that.emotionModel,_that.maxResponseTokens,_that.public,_that.createdBy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String name,  String role,  String personality,  String voice,  String informations,  PersonaEmotionModelModel emotionModel,  int maxResponseTokens,  bool public,  String createdBy)  $default,) {final _that = this;
switch (_that) {
case _PersonaModel():
return $default(_that.id,_that.name,_that.role,_that.personality,_that.voice,_that.informations,_that.emotionModel,_that.maxResponseTokens,_that.public,_that.createdBy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String name,  String role,  String personality,  String voice,  String informations,  PersonaEmotionModelModel emotionModel,  int maxResponseTokens,  bool public,  String createdBy)?  $default,) {final _that = this;
switch (_that) {
case _PersonaModel() when $default != null:
return $default(_that.id,_that.name,_that.role,_that.personality,_that.voice,_that.informations,_that.emotionModel,_that.maxResponseTokens,_that.public,_that.createdBy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonaModel implements PersonaModel {
   _PersonaModel({@JsonKey(name: '_id') required this.id, required this.name, required this.role, required this.personality, required this.voice, required this.informations, required this.emotionModel, required this.maxResponseTokens, required this.public, required this.createdBy});
  factory _PersonaModel.fromJson(Map<String, dynamic> json) => _$PersonaModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String name;
@override final  String role;
@override final  String personality;
@override final  String voice;
@override final  String informations;
@override final  PersonaEmotionModelModel emotionModel;
@override final  int maxResponseTokens;
@override final  bool public;
@override final  String createdBy;

/// Create a copy of PersonaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonaModelCopyWith<_PersonaModel> get copyWith => __$PersonaModelCopyWithImpl<_PersonaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.role, role) || other.role == role)&&(identical(other.personality, personality) || other.personality == personality)&&(identical(other.voice, voice) || other.voice == voice)&&(identical(other.informations, informations) || other.informations == informations)&&(identical(other.emotionModel, emotionModel) || other.emotionModel == emotionModel)&&(identical(other.maxResponseTokens, maxResponseTokens) || other.maxResponseTokens == maxResponseTokens)&&(identical(other.public, public) || other.public == public)&&(identical(other.createdBy, createdBy) || other.createdBy == createdBy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,role,personality,voice,informations,emotionModel,maxResponseTokens,public,createdBy);

@override
String toString() {
  return 'PersonaModel(id: $id, name: $name, role: $role, personality: $personality, voice: $voice, informations: $informations, emotionModel: $emotionModel, maxResponseTokens: $maxResponseTokens, public: $public, createdBy: $createdBy)';
}


}

/// @nodoc
abstract mixin class _$PersonaModelCopyWith<$Res> implements $PersonaModelCopyWith<$Res> {
  factory _$PersonaModelCopyWith(_PersonaModel value, $Res Function(_PersonaModel) _then) = __$PersonaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String name, String role, String personality, String voice, String informations, PersonaEmotionModelModel emotionModel, int maxResponseTokens, bool public, String createdBy
});


@override $PersonaEmotionModelModelCopyWith<$Res> get emotionModel;

}
/// @nodoc
class __$PersonaModelCopyWithImpl<$Res>
    implements _$PersonaModelCopyWith<$Res> {
  __$PersonaModelCopyWithImpl(this._self, this._then);

  final _PersonaModel _self;
  final $Res Function(_PersonaModel) _then;

/// Create a copy of PersonaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? role = null,Object? personality = null,Object? voice = null,Object? informations = null,Object? emotionModel = null,Object? maxResponseTokens = null,Object? public = null,Object? createdBy = null,}) {
  return _then(_PersonaModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,personality: null == personality ? _self.personality : personality // ignore: cast_nullable_to_non_nullable
as String,voice: null == voice ? _self.voice : voice // ignore: cast_nullable_to_non_nullable
as String,informations: null == informations ? _self.informations : informations // ignore: cast_nullable_to_non_nullable
as String,emotionModel: null == emotionModel ? _self.emotionModel : emotionModel // ignore: cast_nullable_to_non_nullable
as PersonaEmotionModelModel,maxResponseTokens: null == maxResponseTokens ? _self.maxResponseTokens : maxResponseTokens // ignore: cast_nullable_to_non_nullable
as int,public: null == public ? _self.public : public // ignore: cast_nullable_to_non_nullable
as bool,createdBy: null == createdBy ? _self.createdBy : createdBy // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PersonaModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PersonaEmotionModelModelCopyWith<$Res> get emotionModel {
  
  return $PersonaEmotionModelModelCopyWith<$Res>(_self.emotionModel, (value) {
    return _then(_self.copyWith(emotionModel: value));
  });
}
}


/// @nodoc
mixin _$PersonaEmotionModelModel {

 String? get baseline; bool? get adapt;@JsonKey(name: '_id') String? get id;
/// Create a copy of PersonaEmotionModelModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PersonaEmotionModelModelCopyWith<PersonaEmotionModelModel> get copyWith => _$PersonaEmotionModelModelCopyWithImpl<PersonaEmotionModelModel>(this as PersonaEmotionModelModel, _$identity);

  /// Serializes this PersonaEmotionModelModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PersonaEmotionModelModel&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.adapt, adapt) || other.adapt == adapt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseline,adapt,id);

@override
String toString() {
  return 'PersonaEmotionModelModel(baseline: $baseline, adapt: $adapt, id: $id)';
}


}

/// @nodoc
abstract mixin class $PersonaEmotionModelModelCopyWith<$Res>  {
  factory $PersonaEmotionModelModelCopyWith(PersonaEmotionModelModel value, $Res Function(PersonaEmotionModelModel) _then) = _$PersonaEmotionModelModelCopyWithImpl;
@useResult
$Res call({
 String? baseline, bool? adapt,@JsonKey(name: '_id') String? id
});




}
/// @nodoc
class _$PersonaEmotionModelModelCopyWithImpl<$Res>
    implements $PersonaEmotionModelModelCopyWith<$Res> {
  _$PersonaEmotionModelModelCopyWithImpl(this._self, this._then);

  final PersonaEmotionModelModel _self;
  final $Res Function(PersonaEmotionModelModel) _then;

/// Create a copy of PersonaEmotionModelModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseline = freezed,Object? adapt = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
baseline: freezed == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as String?,adapt: freezed == adapt ? _self.adapt : adapt // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PersonaEmotionModelModel].
extension PersonaEmotionModelModelPatterns on PersonaEmotionModelModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PersonaEmotionModelModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PersonaEmotionModelModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PersonaEmotionModelModel value)  $default,){
final _that = this;
switch (_that) {
case _PersonaEmotionModelModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PersonaEmotionModelModel value)?  $default,){
final _that = this;
switch (_that) {
case _PersonaEmotionModelModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? baseline,  bool? adapt, @JsonKey(name: '_id')  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PersonaEmotionModelModel() when $default != null:
return $default(_that.baseline,_that.adapt,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? baseline,  bool? adapt, @JsonKey(name: '_id')  String? id)  $default,) {final _that = this;
switch (_that) {
case _PersonaEmotionModelModel():
return $default(_that.baseline,_that.adapt,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? baseline,  bool? adapt, @JsonKey(name: '_id')  String? id)?  $default,) {final _that = this;
switch (_that) {
case _PersonaEmotionModelModel() when $default != null:
return $default(_that.baseline,_that.adapt,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PersonaEmotionModelModel implements PersonaEmotionModelModel {
   _PersonaEmotionModelModel({required this.baseline, required this.adapt, @JsonKey(name: '_id') required this.id});
  factory _PersonaEmotionModelModel.fromJson(Map<String, dynamic> json) => _$PersonaEmotionModelModelFromJson(json);

@override final  String? baseline;
@override final  bool? adapt;
@override@JsonKey(name: '_id') final  String? id;

/// Create a copy of PersonaEmotionModelModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PersonaEmotionModelModelCopyWith<_PersonaEmotionModelModel> get copyWith => __$PersonaEmotionModelModelCopyWithImpl<_PersonaEmotionModelModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PersonaEmotionModelModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PersonaEmotionModelModel&&(identical(other.baseline, baseline) || other.baseline == baseline)&&(identical(other.adapt, adapt) || other.adapt == adapt)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseline,adapt,id);

@override
String toString() {
  return 'PersonaEmotionModelModel(baseline: $baseline, adapt: $adapt, id: $id)';
}


}

/// @nodoc
abstract mixin class _$PersonaEmotionModelModelCopyWith<$Res> implements $PersonaEmotionModelModelCopyWith<$Res> {
  factory _$PersonaEmotionModelModelCopyWith(_PersonaEmotionModelModel value, $Res Function(_PersonaEmotionModelModel) _then) = __$PersonaEmotionModelModelCopyWithImpl;
@override @useResult
$Res call({
 String? baseline, bool? adapt,@JsonKey(name: '_id') String? id
});




}
/// @nodoc
class __$PersonaEmotionModelModelCopyWithImpl<$Res>
    implements _$PersonaEmotionModelModelCopyWith<$Res> {
  __$PersonaEmotionModelModelCopyWithImpl(this._self, this._then);

  final _PersonaEmotionModelModel _self;
  final $Res Function(_PersonaEmotionModelModel) _then;

/// Create a copy of PersonaEmotionModelModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseline = freezed,Object? adapt = freezed,Object? id = freezed,}) {
  return _then(_PersonaEmotionModelModel(
baseline: freezed == baseline ? _self.baseline : baseline // ignore: cast_nullable_to_non_nullable
as String?,adapt: freezed == adapt ? _self.adapt : adapt // ignore: cast_nullable_to_non_nullable
as bool?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
