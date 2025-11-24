// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytic_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnalyticModel {

 AnalyticTrendsModel get trends; int? get currentStreak; AnalyticAnalyticsModel get analytics;
/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticModelCopyWith<AnalyticModel> get copyWith => _$AnalyticModelCopyWithImpl<AnalyticModel>(this as AnalyticModel, _$identity);

  /// Serializes this AnalyticModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticModel&&(identical(other.trends, trends) || other.trends == trends)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.analytics, analytics) || other.analytics == analytics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trends,currentStreak,analytics);

@override
String toString() {
  return 'AnalyticModel(trends: $trends, currentStreak: $currentStreak, analytics: $analytics)';
}


}

/// @nodoc
abstract mixin class $AnalyticModelCopyWith<$Res>  {
  factory $AnalyticModelCopyWith(AnalyticModel value, $Res Function(AnalyticModel) _then) = _$AnalyticModelCopyWithImpl;
@useResult
$Res call({
 AnalyticTrendsModel trends, int? currentStreak, AnalyticAnalyticsModel analytics
});


$AnalyticTrendsModelCopyWith<$Res> get trends;$AnalyticAnalyticsModelCopyWith<$Res> get analytics;

}
/// @nodoc
class _$AnalyticModelCopyWithImpl<$Res>
    implements $AnalyticModelCopyWith<$Res> {
  _$AnalyticModelCopyWithImpl(this._self, this._then);

  final AnalyticModel _self;
  final $Res Function(AnalyticModel) _then;

/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? trends = null,Object? currentStreak = freezed,Object? analytics = null,}) {
  return _then(_self.copyWith(
trends: null == trends ? _self.trends : trends // ignore: cast_nullable_to_non_nullable
as AnalyticTrendsModel,currentStreak: freezed == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int?,analytics: null == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as AnalyticAnalyticsModel,
  ));
}
/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticTrendsModelCopyWith<$Res> get trends {
  
  return $AnalyticTrendsModelCopyWith<$Res>(_self.trends, (value) {
    return _then(_self.copyWith(trends: value));
  });
}/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticAnalyticsModelCopyWith<$Res> get analytics {
  
  return $AnalyticAnalyticsModelCopyWith<$Res>(_self.analytics, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}
}


/// Adds pattern-matching-related methods to [AnalyticModel].
extension AnalyticModelPatterns on AnalyticModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AnalyticTrendsModel trends,  int? currentStreak,  AnalyticAnalyticsModel analytics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticModel() when $default != null:
return $default(_that.trends,_that.currentStreak,_that.analytics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AnalyticTrendsModel trends,  int? currentStreak,  AnalyticAnalyticsModel analytics)  $default,) {final _that = this;
switch (_that) {
case _AnalyticModel():
return $default(_that.trends,_that.currentStreak,_that.analytics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AnalyticTrendsModel trends,  int? currentStreak,  AnalyticAnalyticsModel analytics)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticModel() when $default != null:
return $default(_that.trends,_that.currentStreak,_that.analytics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticModel implements AnalyticModel {
   _AnalyticModel({required this.trends, required this.currentStreak, required this.analytics});
  factory _AnalyticModel.fromJson(Map<String, dynamic> json) => _$AnalyticModelFromJson(json);

@override final  AnalyticTrendsModel trends;
@override final  int? currentStreak;
@override final  AnalyticAnalyticsModel analytics;

/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticModelCopyWith<_AnalyticModel> get copyWith => __$AnalyticModelCopyWithImpl<_AnalyticModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticModel&&(identical(other.trends, trends) || other.trends == trends)&&(identical(other.currentStreak, currentStreak) || other.currentStreak == currentStreak)&&(identical(other.analytics, analytics) || other.analytics == analytics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,trends,currentStreak,analytics);

@override
String toString() {
  return 'AnalyticModel(trends: $trends, currentStreak: $currentStreak, analytics: $analytics)';
}


}

/// @nodoc
abstract mixin class _$AnalyticModelCopyWith<$Res> implements $AnalyticModelCopyWith<$Res> {
  factory _$AnalyticModelCopyWith(_AnalyticModel value, $Res Function(_AnalyticModel) _then) = __$AnalyticModelCopyWithImpl;
@override @useResult
$Res call({
 AnalyticTrendsModel trends, int? currentStreak, AnalyticAnalyticsModel analytics
});


@override $AnalyticTrendsModelCopyWith<$Res> get trends;@override $AnalyticAnalyticsModelCopyWith<$Res> get analytics;

}
/// @nodoc
class __$AnalyticModelCopyWithImpl<$Res>
    implements _$AnalyticModelCopyWith<$Res> {
  __$AnalyticModelCopyWithImpl(this._self, this._then);

  final _AnalyticModel _self;
  final $Res Function(_AnalyticModel) _then;

/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? trends = null,Object? currentStreak = freezed,Object? analytics = null,}) {
  return _then(_AnalyticModel(
trends: null == trends ? _self.trends : trends // ignore: cast_nullable_to_non_nullable
as AnalyticTrendsModel,currentStreak: freezed == currentStreak ? _self.currentStreak : currentStreak // ignore: cast_nullable_to_non_nullable
as int?,analytics: null == analytics ? _self.analytics : analytics // ignore: cast_nullable_to_non_nullable
as AnalyticAnalyticsModel,
  ));
}

/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticTrendsModelCopyWith<$Res> get trends {
  
  return $AnalyticTrendsModelCopyWith<$Res>(_self.trends, (value) {
    return _then(_self.copyWith(trends: value));
  });
}/// Create a copy of AnalyticModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AnalyticAnalyticsModelCopyWith<$Res> get analytics {
  
  return $AnalyticAnalyticsModelCopyWith<$Res>(_self.analytics, (value) {
    return _then(_self.copyWith(analytics: value));
  });
}
}


/// @nodoc
mixin _$AnalyticTrendsModel {

 int? get conversations; int? get totalLength; int? get emotionScore; int? get fluencyScore; int? get wordingScore;
/// Create a copy of AnalyticTrendsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticTrendsModelCopyWith<AnalyticTrendsModel> get copyWith => _$AnalyticTrendsModelCopyWithImpl<AnalyticTrendsModel>(this as AnalyticTrendsModel, _$identity);

  /// Serializes this AnalyticTrendsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticTrendsModel&&(identical(other.conversations, conversations) || other.conversations == conversations)&&(identical(other.totalLength, totalLength) || other.totalLength == totalLength)&&(identical(other.emotionScore, emotionScore) || other.emotionScore == emotionScore)&&(identical(other.fluencyScore, fluencyScore) || other.fluencyScore == fluencyScore)&&(identical(other.wordingScore, wordingScore) || other.wordingScore == wordingScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversations,totalLength,emotionScore,fluencyScore,wordingScore);

@override
String toString() {
  return 'AnalyticTrendsModel(conversations: $conversations, totalLength: $totalLength, emotionScore: $emotionScore, fluencyScore: $fluencyScore, wordingScore: $wordingScore)';
}


}

/// @nodoc
abstract mixin class $AnalyticTrendsModelCopyWith<$Res>  {
  factory $AnalyticTrendsModelCopyWith(AnalyticTrendsModel value, $Res Function(AnalyticTrendsModel) _then) = _$AnalyticTrendsModelCopyWithImpl;
@useResult
$Res call({
 int? conversations, int? totalLength, int? emotionScore, int? fluencyScore, int? wordingScore
});




}
/// @nodoc
class _$AnalyticTrendsModelCopyWithImpl<$Res>
    implements $AnalyticTrendsModelCopyWith<$Res> {
  _$AnalyticTrendsModelCopyWithImpl(this._self, this._then);

  final AnalyticTrendsModel _self;
  final $Res Function(AnalyticTrendsModel) _then;

/// Create a copy of AnalyticTrendsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversations = freezed,Object? totalLength = freezed,Object? emotionScore = freezed,Object? fluencyScore = freezed,Object? wordingScore = freezed,}) {
  return _then(_self.copyWith(
conversations: freezed == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as int?,totalLength: freezed == totalLength ? _self.totalLength : totalLength // ignore: cast_nullable_to_non_nullable
as int?,emotionScore: freezed == emotionScore ? _self.emotionScore : emotionScore // ignore: cast_nullable_to_non_nullable
as int?,fluencyScore: freezed == fluencyScore ? _self.fluencyScore : fluencyScore // ignore: cast_nullable_to_non_nullable
as int?,wordingScore: freezed == wordingScore ? _self.wordingScore : wordingScore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticTrendsModel].
extension AnalyticTrendsModelPatterns on AnalyticTrendsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticTrendsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticTrendsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticTrendsModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticTrendsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticTrendsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticTrendsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? conversations,  int? totalLength,  int? emotionScore,  int? fluencyScore,  int? wordingScore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticTrendsModel() when $default != null:
return $default(_that.conversations,_that.totalLength,_that.emotionScore,_that.fluencyScore,_that.wordingScore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? conversations,  int? totalLength,  int? emotionScore,  int? fluencyScore,  int? wordingScore)  $default,) {final _that = this;
switch (_that) {
case _AnalyticTrendsModel():
return $default(_that.conversations,_that.totalLength,_that.emotionScore,_that.fluencyScore,_that.wordingScore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? conversations,  int? totalLength,  int? emotionScore,  int? fluencyScore,  int? wordingScore)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticTrendsModel() when $default != null:
return $default(_that.conversations,_that.totalLength,_that.emotionScore,_that.fluencyScore,_that.wordingScore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticTrendsModel implements AnalyticTrendsModel {
   _AnalyticTrendsModel({required this.conversations, required this.totalLength, required this.emotionScore, required this.fluencyScore, required this.wordingScore});
  factory _AnalyticTrendsModel.fromJson(Map<String, dynamic> json) => _$AnalyticTrendsModelFromJson(json);

@override final  int? conversations;
@override final  int? totalLength;
@override final  int? emotionScore;
@override final  int? fluencyScore;
@override final  int? wordingScore;

/// Create a copy of AnalyticTrendsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticTrendsModelCopyWith<_AnalyticTrendsModel> get copyWith => __$AnalyticTrendsModelCopyWithImpl<_AnalyticTrendsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticTrendsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticTrendsModel&&(identical(other.conversations, conversations) || other.conversations == conversations)&&(identical(other.totalLength, totalLength) || other.totalLength == totalLength)&&(identical(other.emotionScore, emotionScore) || other.emotionScore == emotionScore)&&(identical(other.fluencyScore, fluencyScore) || other.fluencyScore == fluencyScore)&&(identical(other.wordingScore, wordingScore) || other.wordingScore == wordingScore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversations,totalLength,emotionScore,fluencyScore,wordingScore);

@override
String toString() {
  return 'AnalyticTrendsModel(conversations: $conversations, totalLength: $totalLength, emotionScore: $emotionScore, fluencyScore: $fluencyScore, wordingScore: $wordingScore)';
}


}

/// @nodoc
abstract mixin class _$AnalyticTrendsModelCopyWith<$Res> implements $AnalyticTrendsModelCopyWith<$Res> {
  factory _$AnalyticTrendsModelCopyWith(_AnalyticTrendsModel value, $Res Function(_AnalyticTrendsModel) _then) = __$AnalyticTrendsModelCopyWithImpl;
@override @useResult
$Res call({
 int? conversations, int? totalLength, int? emotionScore, int? fluencyScore, int? wordingScore
});




}
/// @nodoc
class __$AnalyticTrendsModelCopyWithImpl<$Res>
    implements _$AnalyticTrendsModelCopyWith<$Res> {
  __$AnalyticTrendsModelCopyWithImpl(this._self, this._then);

  final _AnalyticTrendsModel _self;
  final $Res Function(_AnalyticTrendsModel) _then;

/// Create a copy of AnalyticTrendsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversations = freezed,Object? totalLength = freezed,Object? emotionScore = freezed,Object? fluencyScore = freezed,Object? wordingScore = freezed,}) {
  return _then(_AnalyticTrendsModel(
conversations: freezed == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as int?,totalLength: freezed == totalLength ? _self.totalLength : totalLength // ignore: cast_nullable_to_non_nullable
as int?,emotionScore: freezed == emotionScore ? _self.emotionScore : emotionScore // ignore: cast_nullable_to_non_nullable
as int?,fluencyScore: freezed == fluencyScore ? _self.fluencyScore : fluencyScore // ignore: cast_nullable_to_non_nullable
as int?,wordingScore: freezed == wordingScore ? _self.wordingScore : wordingScore // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AnalyticAnalyticsModel {

 int? get conversations; int? get totalLength; int? get averageEmotion; int? get averageFluency; int? get averageWording;
/// Create a copy of AnalyticAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnalyticAnalyticsModelCopyWith<AnalyticAnalyticsModel> get copyWith => _$AnalyticAnalyticsModelCopyWithImpl<AnalyticAnalyticsModel>(this as AnalyticAnalyticsModel, _$identity);

  /// Serializes this AnalyticAnalyticsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnalyticAnalyticsModel&&(identical(other.conversations, conversations) || other.conversations == conversations)&&(identical(other.totalLength, totalLength) || other.totalLength == totalLength)&&(identical(other.averageEmotion, averageEmotion) || other.averageEmotion == averageEmotion)&&(identical(other.averageFluency, averageFluency) || other.averageFluency == averageFluency)&&(identical(other.averageWording, averageWording) || other.averageWording == averageWording));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversations,totalLength,averageEmotion,averageFluency,averageWording);

@override
String toString() {
  return 'AnalyticAnalyticsModel(conversations: $conversations, totalLength: $totalLength, averageEmotion: $averageEmotion, averageFluency: $averageFluency, averageWording: $averageWording)';
}


}

/// @nodoc
abstract mixin class $AnalyticAnalyticsModelCopyWith<$Res>  {
  factory $AnalyticAnalyticsModelCopyWith(AnalyticAnalyticsModel value, $Res Function(AnalyticAnalyticsModel) _then) = _$AnalyticAnalyticsModelCopyWithImpl;
@useResult
$Res call({
 int? conversations, int? totalLength, int? averageEmotion, int? averageFluency, int? averageWording
});




}
/// @nodoc
class _$AnalyticAnalyticsModelCopyWithImpl<$Res>
    implements $AnalyticAnalyticsModelCopyWith<$Res> {
  _$AnalyticAnalyticsModelCopyWithImpl(this._self, this._then);

  final AnalyticAnalyticsModel _self;
  final $Res Function(AnalyticAnalyticsModel) _then;

/// Create a copy of AnalyticAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conversations = freezed,Object? totalLength = freezed,Object? averageEmotion = freezed,Object? averageFluency = freezed,Object? averageWording = freezed,}) {
  return _then(_self.copyWith(
conversations: freezed == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as int?,totalLength: freezed == totalLength ? _self.totalLength : totalLength // ignore: cast_nullable_to_non_nullable
as int?,averageEmotion: freezed == averageEmotion ? _self.averageEmotion : averageEmotion // ignore: cast_nullable_to_non_nullable
as int?,averageFluency: freezed == averageFluency ? _self.averageFluency : averageFluency // ignore: cast_nullable_to_non_nullable
as int?,averageWording: freezed == averageWording ? _self.averageWording : averageWording // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnalyticAnalyticsModel].
extension AnalyticAnalyticsModelPatterns on AnalyticAnalyticsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnalyticAnalyticsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnalyticAnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnalyticAnalyticsModel value)  $default,){
final _that = this;
switch (_that) {
case _AnalyticAnalyticsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnalyticAnalyticsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnalyticAnalyticsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? conversations,  int? totalLength,  int? averageEmotion,  int? averageFluency,  int? averageWording)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnalyticAnalyticsModel() when $default != null:
return $default(_that.conversations,_that.totalLength,_that.averageEmotion,_that.averageFluency,_that.averageWording);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? conversations,  int? totalLength,  int? averageEmotion,  int? averageFluency,  int? averageWording)  $default,) {final _that = this;
switch (_that) {
case _AnalyticAnalyticsModel():
return $default(_that.conversations,_that.totalLength,_that.averageEmotion,_that.averageFluency,_that.averageWording);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? conversations,  int? totalLength,  int? averageEmotion,  int? averageFluency,  int? averageWording)?  $default,) {final _that = this;
switch (_that) {
case _AnalyticAnalyticsModel() when $default != null:
return $default(_that.conversations,_that.totalLength,_that.averageEmotion,_that.averageFluency,_that.averageWording);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnalyticAnalyticsModel implements AnalyticAnalyticsModel {
   _AnalyticAnalyticsModel({required this.conversations, required this.totalLength, required this.averageEmotion, required this.averageFluency, required this.averageWording});
  factory _AnalyticAnalyticsModel.fromJson(Map<String, dynamic> json) => _$AnalyticAnalyticsModelFromJson(json);

@override final  int? conversations;
@override final  int? totalLength;
@override final  int? averageEmotion;
@override final  int? averageFluency;
@override final  int? averageWording;

/// Create a copy of AnalyticAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnalyticAnalyticsModelCopyWith<_AnalyticAnalyticsModel> get copyWith => __$AnalyticAnalyticsModelCopyWithImpl<_AnalyticAnalyticsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnalyticAnalyticsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnalyticAnalyticsModel&&(identical(other.conversations, conversations) || other.conversations == conversations)&&(identical(other.totalLength, totalLength) || other.totalLength == totalLength)&&(identical(other.averageEmotion, averageEmotion) || other.averageEmotion == averageEmotion)&&(identical(other.averageFluency, averageFluency) || other.averageFluency == averageFluency)&&(identical(other.averageWording, averageWording) || other.averageWording == averageWording));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,conversations,totalLength,averageEmotion,averageFluency,averageWording);

@override
String toString() {
  return 'AnalyticAnalyticsModel(conversations: $conversations, totalLength: $totalLength, averageEmotion: $averageEmotion, averageFluency: $averageFluency, averageWording: $averageWording)';
}


}

/// @nodoc
abstract mixin class _$AnalyticAnalyticsModelCopyWith<$Res> implements $AnalyticAnalyticsModelCopyWith<$Res> {
  factory _$AnalyticAnalyticsModelCopyWith(_AnalyticAnalyticsModel value, $Res Function(_AnalyticAnalyticsModel) _then) = __$AnalyticAnalyticsModelCopyWithImpl;
@override @useResult
$Res call({
 int? conversations, int? totalLength, int? averageEmotion, int? averageFluency, int? averageWording
});




}
/// @nodoc
class __$AnalyticAnalyticsModelCopyWithImpl<$Res>
    implements _$AnalyticAnalyticsModelCopyWith<$Res> {
  __$AnalyticAnalyticsModelCopyWithImpl(this._self, this._then);

  final _AnalyticAnalyticsModel _self;
  final $Res Function(_AnalyticAnalyticsModel) _then;

/// Create a copy of AnalyticAnalyticsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conversations = freezed,Object? totalLength = freezed,Object? averageEmotion = freezed,Object? averageFluency = freezed,Object? averageWording = freezed,}) {
  return _then(_AnalyticAnalyticsModel(
conversations: freezed == conversations ? _self.conversations : conversations // ignore: cast_nullable_to_non_nullable
as int?,totalLength: freezed == totalLength ? _self.totalLength : totalLength // ignore: cast_nullable_to_non_nullable
as int?,averageEmotion: freezed == averageEmotion ? _self.averageEmotion : averageEmotion // ignore: cast_nullable_to_non_nullable
as int?,averageFluency: freezed == averageFluency ? _self.averageFluency : averageFluency // ignore: cast_nullable_to_non_nullable
as int?,averageWording: freezed == averageWording ? _self.averageWording : averageWording // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
