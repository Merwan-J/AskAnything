// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_detail_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionDetailEvent {
  String get questionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String questionId) load,
    required TResult Function(String questionId) reload,
    required TResult Function(String questionId) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String questionId)? load,
    TResult? Function(String questionId)? reload,
    TResult? Function(String questionId)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String questionId)? load,
    TResult Function(String questionId)? reload,
    TResult Function(String questionId)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailLoadEvent value)? load,
    TResult? Function(QuestionDetailReloadEvent value)? reload,
    TResult? Function(QuestionDetailDeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionDetailEventCopyWith<QuestionDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailEventCopyWith<$Res> {
  factory $QuestionDetailEventCopyWith(
          QuestionDetailEvent value, $Res Function(QuestionDetailEvent) then) =
      _$QuestionDetailEventCopyWithImpl<$Res, QuestionDetailEvent>;
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class _$QuestionDetailEventCopyWithImpl<$Res, $Val extends QuestionDetailEvent>
    implements $QuestionDetailEventCopyWith<$Res> {
  _$QuestionDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
  }) {
    return _then(_value.copyWith(
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionDetailLoadEventCopyWith<$Res>
    implements $QuestionDetailEventCopyWith<$Res> {
  factory _$$QuestionDetailLoadEventCopyWith(_$QuestionDetailLoadEvent value,
          $Res Function(_$QuestionDetailLoadEvent) then) =
      __$$QuestionDetailLoadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class __$$QuestionDetailLoadEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res, _$QuestionDetailLoadEvent>
    implements _$$QuestionDetailLoadEventCopyWith<$Res> {
  __$$QuestionDetailLoadEventCopyWithImpl(_$QuestionDetailLoadEvent _value,
      $Res Function(_$QuestionDetailLoadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
  }) {
    return _then(_$QuestionDetailLoadEvent(
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionDetailLoadEvent implements QuestionDetailLoadEvent {
  const _$QuestionDetailLoadEvent(this.questionId);

  @override
  final String questionId;

  @override
  String toString() {
    return 'QuestionDetailEvent.load(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailLoadEvent &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDetailLoadEventCopyWith<_$QuestionDetailLoadEvent> get copyWith =>
      __$$QuestionDetailLoadEventCopyWithImpl<_$QuestionDetailLoadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String questionId) load,
    required TResult Function(String questionId) reload,
    required TResult Function(String questionId) delete,
  }) {
    return load(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String questionId)? load,
    TResult? Function(String questionId)? reload,
    TResult? Function(String questionId)? delete,
  }) {
    return load?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String questionId)? load,
    TResult Function(String questionId)? reload,
    TResult Function(String questionId)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailLoadEvent value)? load,
    TResult? Function(QuestionDetailReloadEvent value)? reload,
    TResult? Function(QuestionDetailDeleteEvent value)? delete,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailLoadEvent implements QuestionDetailEvent {
  const factory QuestionDetailLoadEvent(final String questionId) =
      _$QuestionDetailLoadEvent;

  @override
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$QuestionDetailLoadEventCopyWith<_$QuestionDetailLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDetailReloadEventCopyWith<$Res>
    implements $QuestionDetailEventCopyWith<$Res> {
  factory _$$QuestionDetailReloadEventCopyWith(
          _$QuestionDetailReloadEvent value,
          $Res Function(_$QuestionDetailReloadEvent) then) =
      __$$QuestionDetailReloadEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class __$$QuestionDetailReloadEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res, _$QuestionDetailReloadEvent>
    implements _$$QuestionDetailReloadEventCopyWith<$Res> {
  __$$QuestionDetailReloadEventCopyWithImpl(_$QuestionDetailReloadEvent _value,
      $Res Function(_$QuestionDetailReloadEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
  }) {
    return _then(_$QuestionDetailReloadEvent(
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionDetailReloadEvent implements QuestionDetailReloadEvent {
  const _$QuestionDetailReloadEvent(this.questionId);

  @override
  final String questionId;

  @override
  String toString() {
    return 'QuestionDetailEvent.reload(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailReloadEvent &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDetailReloadEventCopyWith<_$QuestionDetailReloadEvent>
      get copyWith => __$$QuestionDetailReloadEventCopyWithImpl<
          _$QuestionDetailReloadEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String questionId) load,
    required TResult Function(String questionId) reload,
    required TResult Function(String questionId) delete,
  }) {
    return reload(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String questionId)? load,
    TResult? Function(String questionId)? reload,
    TResult? Function(String questionId)? delete,
  }) {
    return reload?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String questionId)? load,
    TResult Function(String questionId)? reload,
    TResult Function(String questionId)? delete,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
  }) {
    return reload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailLoadEvent value)? load,
    TResult? Function(QuestionDetailReloadEvent value)? reload,
    TResult? Function(QuestionDetailDeleteEvent value)? delete,
  }) {
    return reload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (reload != null) {
      return reload(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailReloadEvent implements QuestionDetailEvent {
  const factory QuestionDetailReloadEvent(final String questionId) =
      _$QuestionDetailReloadEvent;

  @override
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$QuestionDetailReloadEventCopyWith<_$QuestionDetailReloadEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDetailDeleteEventCopyWith<$Res>
    implements $QuestionDetailEventCopyWith<$Res> {
  factory _$$QuestionDetailDeleteEventCopyWith(
          _$QuestionDetailDeleteEvent value,
          $Res Function(_$QuestionDetailDeleteEvent) then) =
      __$$QuestionDetailDeleteEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String questionId});
}

/// @nodoc
class __$$QuestionDetailDeleteEventCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res, _$QuestionDetailDeleteEvent>
    implements _$$QuestionDetailDeleteEventCopyWith<$Res> {
  __$$QuestionDetailDeleteEventCopyWithImpl(_$QuestionDetailDeleteEvent _value,
      $Res Function(_$QuestionDetailDeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionId = null,
  }) {
    return _then(_$QuestionDetailDeleteEvent(
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionDetailDeleteEvent implements QuestionDetailDeleteEvent {
  const _$QuestionDetailDeleteEvent(this.questionId);

  @override
  final String questionId;

  @override
  String toString() {
    return 'QuestionDetailEvent.delete(questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailDeleteEvent &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDetailDeleteEventCopyWith<_$QuestionDetailDeleteEvent>
      get copyWith => __$$QuestionDetailDeleteEventCopyWithImpl<
          _$QuestionDetailDeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String questionId) load,
    required TResult Function(String questionId) reload,
    required TResult Function(String questionId) delete,
  }) {
    return delete(questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String questionId)? load,
    TResult? Function(String questionId)? reload,
    TResult? Function(String questionId)? delete,
  }) {
    return delete?.call(questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String questionId)? load,
    TResult Function(String questionId)? reload,
    TResult Function(String questionId)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailLoadEvent value) load,
    required TResult Function(QuestionDetailReloadEvent value) reload,
    required TResult Function(QuestionDetailDeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailLoadEvent value)? load,
    TResult? Function(QuestionDetailReloadEvent value)? reload,
    TResult? Function(QuestionDetailDeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailLoadEvent value)? load,
    TResult Function(QuestionDetailReloadEvent value)? reload,
    TResult Function(QuestionDetailDeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailDeleteEvent implements QuestionDetailEvent {
  const factory QuestionDetailDeleteEvent(final String questionId) =
      _$QuestionDetailDeleteEvent;

  @override
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$QuestionDetailDeleteEventCopyWith<_$QuestionDetailDeleteEvent>
      get copyWith => throw _privateConstructorUsedError;
}
