// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'conversation_rating_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ConversationRatingModel {

@JsonKey(name: '_id') String get id; String get user; String get scenario; List<ConversationRatingRoundsModel> get rounds; ConversationRatingStatsModel get stats; int get length; String get createdAt; String get updatedAt;
/// Create a copy of ConversationRatingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationRatingModelCopyWith<ConversationRatingModel> get copyWith => _$ConversationRatingModelCopyWithImpl<ConversationRatingModel>(this as ConversationRatingModel, _$identity);

  /// Serializes this ConversationRatingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationRatingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&const DeepCollectionEquality().equals(other.rounds, rounds)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.length, length) || other.length == length)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,scenario,const DeepCollectionEquality().hash(rounds),stats,length,createdAt,updatedAt);

@override
String toString() {
  return 'ConversationRatingModel(id: $id, user: $user, scenario: $scenario, rounds: $rounds, stats: $stats, length: $length, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ConversationRatingModelCopyWith<$Res>  {
  factory $ConversationRatingModelCopyWith(ConversationRatingModel value, $Res Function(ConversationRatingModel) _then) = _$ConversationRatingModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String user, String scenario, List<ConversationRatingRoundsModel> rounds, ConversationRatingStatsModel stats, int length, String createdAt, String updatedAt
});


$ConversationRatingStatsModelCopyWith<$Res> get stats;

}
/// @nodoc
class _$ConversationRatingModelCopyWithImpl<$Res>
    implements $ConversationRatingModelCopyWith<$Res> {
  _$ConversationRatingModelCopyWithImpl(this._self, this._then);

  final ConversationRatingModel _self;
  final $Res Function(ConversationRatingModel) _then;

/// Create a copy of ConversationRatingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? scenario = null,Object? rounds = null,Object? stats = null,Object? length = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,scenario: null == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as String,rounds: null == rounds ? _self.rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<ConversationRatingRoundsModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ConversationRatingStatsModel,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ConversationRatingModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationRatingStatsModelCopyWith<$Res> get stats {
  
  return $ConversationRatingStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// Adds pattern-matching-related methods to [ConversationRatingModel].
extension ConversationRatingModelPatterns on ConversationRatingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationRatingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationRatingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationRatingModel value)  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationRatingModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String user,  String scenario,  List<ConversationRatingRoundsModel> rounds,  ConversationRatingStatsModel stats,  int length,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationRatingModel() when $default != null:
return $default(_that.id,_that.user,_that.scenario,_that.rounds,_that.stats,_that.length,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String user,  String scenario,  List<ConversationRatingRoundsModel> rounds,  ConversationRatingStatsModel stats,  int length,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingModel():
return $default(_that.id,_that.user,_that.scenario,_that.rounds,_that.stats,_that.length,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String user,  String scenario,  List<ConversationRatingRoundsModel> rounds,  ConversationRatingStatsModel stats,  int length,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingModel() when $default != null:
return $default(_that.id,_that.user,_that.scenario,_that.rounds,_that.stats,_that.length,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationRatingModel implements ConversationRatingModel {
   _ConversationRatingModel({@JsonKey(name: '_id') required this.id, required this.user, required this.scenario, required final  List<ConversationRatingRoundsModel> rounds, required this.stats, required this.length, required this.createdAt, required this.updatedAt}): _rounds = rounds;
  factory _ConversationRatingModel.fromJson(Map<String, dynamic> json) => _$ConversationRatingModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String user;
@override final  String scenario;
 final  List<ConversationRatingRoundsModel> _rounds;
@override List<ConversationRatingRoundsModel> get rounds {
  if (_rounds is EqualUnmodifiableListView) return _rounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_rounds);
}

@override final  ConversationRatingStatsModel stats;
@override final  int length;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of ConversationRatingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationRatingModelCopyWith<_ConversationRatingModel> get copyWith => __$ConversationRatingModelCopyWithImpl<_ConversationRatingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationRatingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationRatingModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.scenario, scenario) || other.scenario == scenario)&&const DeepCollectionEquality().equals(other._rounds, _rounds)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.length, length) || other.length == length)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,user,scenario,const DeepCollectionEquality().hash(_rounds),stats,length,createdAt,updatedAt);

@override
String toString() {
  return 'ConversationRatingModel(id: $id, user: $user, scenario: $scenario, rounds: $rounds, stats: $stats, length: $length, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ConversationRatingModelCopyWith<$Res> implements $ConversationRatingModelCopyWith<$Res> {
  factory _$ConversationRatingModelCopyWith(_ConversationRatingModel value, $Res Function(_ConversationRatingModel) _then) = __$ConversationRatingModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String user, String scenario, List<ConversationRatingRoundsModel> rounds, ConversationRatingStatsModel stats, int length, String createdAt, String updatedAt
});


@override $ConversationRatingStatsModelCopyWith<$Res> get stats;

}
/// @nodoc
class __$ConversationRatingModelCopyWithImpl<$Res>
    implements _$ConversationRatingModelCopyWith<$Res> {
  __$ConversationRatingModelCopyWithImpl(this._self, this._then);

  final _ConversationRatingModel _self;
  final $Res Function(_ConversationRatingModel) _then;

/// Create a copy of ConversationRatingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? scenario = null,Object? rounds = null,Object? stats = null,Object? length = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ConversationRatingModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as String,scenario: null == scenario ? _self.scenario : scenario // ignore: cast_nullable_to_non_nullable
as String,rounds: null == rounds ? _self._rounds : rounds // ignore: cast_nullable_to_non_nullable
as List<ConversationRatingRoundsModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as ConversationRatingStatsModel,length: null == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ConversationRatingModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConversationRatingStatsModelCopyWith<$Res> get stats {
  
  return $ConversationRatingStatsModelCopyWith<$Res>(_self.stats, (value) {
    return _then(_self.copyWith(stats: value));
  });
}
}


/// @nodoc
mixin _$ConversationRatingRoundsModel {

 String get roundId; List<ConversationRatingRoundsTranscriptModel> get transcript;
/// Create a copy of ConversationRatingRoundsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationRatingRoundsModelCopyWith<ConversationRatingRoundsModel> get copyWith => _$ConversationRatingRoundsModelCopyWithImpl<ConversationRatingRoundsModel>(this as ConversationRatingRoundsModel, _$identity);

  /// Serializes this ConversationRatingRoundsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationRatingRoundsModel&&(identical(other.roundId, roundId) || other.roundId == roundId)&&const DeepCollectionEquality().equals(other.transcript, transcript));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roundId,const DeepCollectionEquality().hash(transcript));

@override
String toString() {
  return 'ConversationRatingRoundsModel(roundId: $roundId, transcript: $transcript)';
}


}

/// @nodoc
abstract mixin class $ConversationRatingRoundsModelCopyWith<$Res>  {
  factory $ConversationRatingRoundsModelCopyWith(ConversationRatingRoundsModel value, $Res Function(ConversationRatingRoundsModel) _then) = _$ConversationRatingRoundsModelCopyWithImpl;
@useResult
$Res call({
 String roundId, List<ConversationRatingRoundsTranscriptModel> transcript
});




}
/// @nodoc
class _$ConversationRatingRoundsModelCopyWithImpl<$Res>
    implements $ConversationRatingRoundsModelCopyWith<$Res> {
  _$ConversationRatingRoundsModelCopyWithImpl(this._self, this._then);

  final ConversationRatingRoundsModel _self;
  final $Res Function(ConversationRatingRoundsModel) _then;

/// Create a copy of ConversationRatingRoundsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roundId = null,Object? transcript = null,}) {
  return _then(_self.copyWith(
roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as String,transcript: null == transcript ? _self.transcript : transcript // ignore: cast_nullable_to_non_nullable
as List<ConversationRatingRoundsTranscriptModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationRatingRoundsModel].
extension ConversationRatingRoundsModelPatterns on ConversationRatingRoundsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationRatingRoundsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationRatingRoundsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationRatingRoundsModel value)  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingRoundsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationRatingRoundsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingRoundsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roundId,  List<ConversationRatingRoundsTranscriptModel> transcript)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationRatingRoundsModel() when $default != null:
return $default(_that.roundId,_that.transcript);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roundId,  List<ConversationRatingRoundsTranscriptModel> transcript)  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingRoundsModel():
return $default(_that.roundId,_that.transcript);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roundId,  List<ConversationRatingRoundsTranscriptModel> transcript)?  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingRoundsModel() when $default != null:
return $default(_that.roundId,_that.transcript);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationRatingRoundsModel implements ConversationRatingRoundsModel {
   _ConversationRatingRoundsModel({required this.roundId, required final  List<ConversationRatingRoundsTranscriptModel> transcript}): _transcript = transcript;
  factory _ConversationRatingRoundsModel.fromJson(Map<String, dynamic> json) => _$ConversationRatingRoundsModelFromJson(json);

@override final  String roundId;
 final  List<ConversationRatingRoundsTranscriptModel> _transcript;
@override List<ConversationRatingRoundsTranscriptModel> get transcript {
  if (_transcript is EqualUnmodifiableListView) return _transcript;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transcript);
}


/// Create a copy of ConversationRatingRoundsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationRatingRoundsModelCopyWith<_ConversationRatingRoundsModel> get copyWith => __$ConversationRatingRoundsModelCopyWithImpl<_ConversationRatingRoundsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationRatingRoundsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationRatingRoundsModel&&(identical(other.roundId, roundId) || other.roundId == roundId)&&const DeepCollectionEquality().equals(other._transcript, _transcript));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roundId,const DeepCollectionEquality().hash(_transcript));

@override
String toString() {
  return 'ConversationRatingRoundsModel(roundId: $roundId, transcript: $transcript)';
}


}

/// @nodoc
abstract mixin class _$ConversationRatingRoundsModelCopyWith<$Res> implements $ConversationRatingRoundsModelCopyWith<$Res> {
  factory _$ConversationRatingRoundsModelCopyWith(_ConversationRatingRoundsModel value, $Res Function(_ConversationRatingRoundsModel) _then) = __$ConversationRatingRoundsModelCopyWithImpl;
@override @useResult
$Res call({
 String roundId, List<ConversationRatingRoundsTranscriptModel> transcript
});




}
/// @nodoc
class __$ConversationRatingRoundsModelCopyWithImpl<$Res>
    implements _$ConversationRatingRoundsModelCopyWith<$Res> {
  __$ConversationRatingRoundsModelCopyWithImpl(this._self, this._then);

  final _ConversationRatingRoundsModel _self;
  final $Res Function(_ConversationRatingRoundsModel) _then;

/// Create a copy of ConversationRatingRoundsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roundId = null,Object? transcript = null,}) {
  return _then(_ConversationRatingRoundsModel(
roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as String,transcript: null == transcript ? _self._transcript : transcript // ignore: cast_nullable_to_non_nullable
as List<ConversationRatingRoundsTranscriptModel>,
  ));
}


}


/// @nodoc
mixin _$ConversationRatingRoundsTranscriptModel {

 String get side; String get text; String get emotions;
/// Create a copy of ConversationRatingRoundsTranscriptModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationRatingRoundsTranscriptModelCopyWith<ConversationRatingRoundsTranscriptModel> get copyWith => _$ConversationRatingRoundsTranscriptModelCopyWithImpl<ConversationRatingRoundsTranscriptModel>(this as ConversationRatingRoundsTranscriptModel, _$identity);

  /// Serializes this ConversationRatingRoundsTranscriptModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationRatingRoundsTranscriptModel&&(identical(other.side, side) || other.side == side)&&(identical(other.text, text) || other.text == text)&&(identical(other.emotions, emotions) || other.emotions == emotions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,side,text,emotions);

@override
String toString() {
  return 'ConversationRatingRoundsTranscriptModel(side: $side, text: $text, emotions: $emotions)';
}


}

/// @nodoc
abstract mixin class $ConversationRatingRoundsTranscriptModelCopyWith<$Res>  {
  factory $ConversationRatingRoundsTranscriptModelCopyWith(ConversationRatingRoundsTranscriptModel value, $Res Function(ConversationRatingRoundsTranscriptModel) _then) = _$ConversationRatingRoundsTranscriptModelCopyWithImpl;
@useResult
$Res call({
 String side, String text, String emotions
});




}
/// @nodoc
class _$ConversationRatingRoundsTranscriptModelCopyWithImpl<$Res>
    implements $ConversationRatingRoundsTranscriptModelCopyWith<$Res> {
  _$ConversationRatingRoundsTranscriptModelCopyWithImpl(this._self, this._then);

  final ConversationRatingRoundsTranscriptModel _self;
  final $Res Function(ConversationRatingRoundsTranscriptModel) _then;

/// Create a copy of ConversationRatingRoundsTranscriptModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? side = null,Object? text = null,Object? emotions = null,}) {
  return _then(_self.copyWith(
side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,emotions: null == emotions ? _self.emotions : emotions // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationRatingRoundsTranscriptModel].
extension ConversationRatingRoundsTranscriptModelPatterns on ConversationRatingRoundsTranscriptModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationRatingRoundsTranscriptModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationRatingRoundsTranscriptModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationRatingRoundsTranscriptModel value)  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingRoundsTranscriptModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationRatingRoundsTranscriptModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingRoundsTranscriptModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String side,  String text,  String emotions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationRatingRoundsTranscriptModel() when $default != null:
return $default(_that.side,_that.text,_that.emotions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String side,  String text,  String emotions)  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingRoundsTranscriptModel():
return $default(_that.side,_that.text,_that.emotions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String side,  String text,  String emotions)?  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingRoundsTranscriptModel() when $default != null:
return $default(_that.side,_that.text,_that.emotions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationRatingRoundsTranscriptModel implements ConversationRatingRoundsTranscriptModel {
   _ConversationRatingRoundsTranscriptModel({required this.side, required this.text, required this.emotions});
  factory _ConversationRatingRoundsTranscriptModel.fromJson(Map<String, dynamic> json) => _$ConversationRatingRoundsTranscriptModelFromJson(json);

@override final  String side;
@override final  String text;
@override final  String emotions;

/// Create a copy of ConversationRatingRoundsTranscriptModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationRatingRoundsTranscriptModelCopyWith<_ConversationRatingRoundsTranscriptModel> get copyWith => __$ConversationRatingRoundsTranscriptModelCopyWithImpl<_ConversationRatingRoundsTranscriptModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationRatingRoundsTranscriptModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationRatingRoundsTranscriptModel&&(identical(other.side, side) || other.side == side)&&(identical(other.text, text) || other.text == text)&&(identical(other.emotions, emotions) || other.emotions == emotions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,side,text,emotions);

@override
String toString() {
  return 'ConversationRatingRoundsTranscriptModel(side: $side, text: $text, emotions: $emotions)';
}


}

/// @nodoc
abstract mixin class _$ConversationRatingRoundsTranscriptModelCopyWith<$Res> implements $ConversationRatingRoundsTranscriptModelCopyWith<$Res> {
  factory _$ConversationRatingRoundsTranscriptModelCopyWith(_ConversationRatingRoundsTranscriptModel value, $Res Function(_ConversationRatingRoundsTranscriptModel) _then) = __$ConversationRatingRoundsTranscriptModelCopyWithImpl;
@override @useResult
$Res call({
 String side, String text, String emotions
});




}
/// @nodoc
class __$ConversationRatingRoundsTranscriptModelCopyWithImpl<$Res>
    implements _$ConversationRatingRoundsTranscriptModelCopyWith<$Res> {
  __$ConversationRatingRoundsTranscriptModelCopyWithImpl(this._self, this._then);

  final _ConversationRatingRoundsTranscriptModel _self;
  final $Res Function(_ConversationRatingRoundsTranscriptModel) _then;

/// Create a copy of ConversationRatingRoundsTranscriptModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? side = null,Object? text = null,Object? emotions = null,}) {
  return _then(_ConversationRatingRoundsTranscriptModel(
side: null == side ? _self.side : side // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,emotions: null == emotions ? _self.emotions : emotions // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ConversationRatingStatsModel {

 int get emotionScore; int get fluencyScore; int get wordingScore;
/// Create a copy of ConversationRatingStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConversationRatingStatsModelCopyWith<ConversationRatingStatsModel> get copyWith => _$ConversationRatingStatsModelCopyWithImpl<ConversationRatingStatsModel>(this as ConversationRatingStatsModel, _$identity);

  /// Serializes this ConversationRatingStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConversationRatingStatsModel&&(identical(other.emotionScore, emotionScore) || other.emotionScore == emotionScore)&&(identical(other.fluencyScore, fluencyScore) || other.fluencyScore == fluencyScore)&&(identical(other.wordingScore, wordingScore) || other.wordingScore == wordingScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emotionScore,fluencyScore,wordingScore);

@override
String toString() {
  return 'ConversationRatingStatsModel(emotionScore: $emotionScore, fluencyScore: $fluencyScore, wordingScore: $wordingScore)';
}


}

/// @nodoc
abstract mixin class $ConversationRatingStatsModelCopyWith<$Res>  {
  factory $ConversationRatingStatsModelCopyWith(ConversationRatingStatsModel value, $Res Function(ConversationRatingStatsModel) _then) = _$ConversationRatingStatsModelCopyWithImpl;
@useResult
$Res call({
 int emotionScore, int fluencyScore, int wordingScore
});




}
/// @nodoc
class _$ConversationRatingStatsModelCopyWithImpl<$Res>
    implements $ConversationRatingStatsModelCopyWith<$Res> {
  _$ConversationRatingStatsModelCopyWithImpl(this._self, this._then);

  final ConversationRatingStatsModel _self;
  final $Res Function(ConversationRatingStatsModel) _then;

/// Create a copy of ConversationRatingStatsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emotionScore = null,Object? fluencyScore = null,Object? wordingScore = null,}) {
  return _then(_self.copyWith(
emotionScore: null == emotionScore ? _self.emotionScore : emotionScore // ignore: cast_nullable_to_non_nullable
as int,fluencyScore: null == fluencyScore ? _self.fluencyScore : fluencyScore // ignore: cast_nullable_to_non_nullable
as int,wordingScore: null == wordingScore ? _self.wordingScore : wordingScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ConversationRatingStatsModel].
extension ConversationRatingStatsModelPatterns on ConversationRatingStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConversationRatingStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConversationRatingStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConversationRatingStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConversationRatingStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConversationRatingStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int emotionScore,  int fluencyScore,  int wordingScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConversationRatingStatsModel() when $default != null:
return $default(_that.emotionScore,_that.fluencyScore,_that.wordingScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int emotionScore,  int fluencyScore,  int wordingScore)  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingStatsModel():
return $default(_that.emotionScore,_that.fluencyScore,_that.wordingScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int emotionScore,  int fluencyScore,  int wordingScore)?  $default,) {final _that = this;
switch (_that) {
case _ConversationRatingStatsModel() when $default != null:
return $default(_that.emotionScore,_that.fluencyScore,_that.wordingScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConversationRatingStatsModel implements ConversationRatingStatsModel {
   _ConversationRatingStatsModel({required this.emotionScore, required this.fluencyScore, required this.wordingScore});
  factory _ConversationRatingStatsModel.fromJson(Map<String, dynamic> json) => _$ConversationRatingStatsModelFromJson(json);

@override final  int emotionScore;
@override final  int fluencyScore;
@override final  int wordingScore;

/// Create a copy of ConversationRatingStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConversationRatingStatsModelCopyWith<_ConversationRatingStatsModel> get copyWith => __$ConversationRatingStatsModelCopyWithImpl<_ConversationRatingStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConversationRatingStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConversationRatingStatsModel&&(identical(other.emotionScore, emotionScore) || other.emotionScore == emotionScore)&&(identical(other.fluencyScore, fluencyScore) || other.fluencyScore == fluencyScore)&&(identical(other.wordingScore, wordingScore) || other.wordingScore == wordingScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,emotionScore,fluencyScore,wordingScore);

@override
String toString() {
  return 'ConversationRatingStatsModel(emotionScore: $emotionScore, fluencyScore: $fluencyScore, wordingScore: $wordingScore)';
}


}

/// @nodoc
abstract mixin class _$ConversationRatingStatsModelCopyWith<$Res> implements $ConversationRatingStatsModelCopyWith<$Res> {
  factory _$ConversationRatingStatsModelCopyWith(_ConversationRatingStatsModel value, $Res Function(_ConversationRatingStatsModel) _then) = __$ConversationRatingStatsModelCopyWithImpl;
@override @useResult
$Res call({
 int emotionScore, int fluencyScore, int wordingScore
});




}
/// @nodoc
class __$ConversationRatingStatsModelCopyWithImpl<$Res>
    implements _$ConversationRatingStatsModelCopyWith<$Res> {
  __$ConversationRatingStatsModelCopyWithImpl(this._self, this._then);

  final _ConversationRatingStatsModel _self;
  final $Res Function(_ConversationRatingStatsModel) _then;

/// Create a copy of ConversationRatingStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emotionScore = null,Object? fluencyScore = null,Object? wordingScore = null,}) {
  return _then(_ConversationRatingStatsModel(
emotionScore: null == emotionScore ? _self.emotionScore : emotionScore // ignore: cast_nullable_to_non_nullable
as int,fluencyScore: null == fluencyScore ? _self.fluencyScore : fluencyScore // ignore: cast_nullable_to_non_nullable
as int,wordingScore: null == wordingScore ? _self.wordingScore : wordingScore // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
