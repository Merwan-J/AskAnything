// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_like_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionLikeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionFailure questionFailure) error,
    required TResult Function() loading,
    required TResult Function(Question question) likesuccess,
    required TResult Function(Question question) dislikesuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionFailure questionFailure)? error,
    TResult? Function()? loading,
    TResult? Function(Question question)? likesuccess,
    TResult? Function(Question question)? dislikesuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionFailure questionFailure)? error,
    TResult Function()? loading,
    TResult Function(Question question)? likesuccess,
    TResult Function(Question question)? dislikesuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLikeStateInitial value) initial,
    required TResult Function(QuestionLikeStateError value) error,
    required TResult Function(QuestionLikeStateLoading value) loading,
    required TResult Function(QuestionLikeStateSuccess value) likesuccess,
    required TResult Function(QuestionDisLikeStateSuccess value) dislikesuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionLikeStateInitial value)? initial,
    TResult? Function(QuestionLikeStateError value)? error,
    TResult? Function(QuestionLikeStateLoading value)? loading,
    TResult? Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult? Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLikeStateInitial value)? initial,
    TResult Function(QuestionLikeStateError value)? error,
    TResult Function(QuestionLikeStateLoading value)? loading,
    TResult Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionLikeStateCopyWith<$Res> {
  factory $QuestionLikeStateCopyWith(
          QuestionLikeState value, $Res Function(QuestionLikeState) then) =
      _$QuestionLikeStateCopyWithImpl<$Res, QuestionLikeState>;
}

/// @nodoc
class _$QuestionLikeStateCopyWithImpl<$Res, $Val extends QuestionLikeState>
    implements $QuestionLikeStateCopyWith<$Res> {
  _$QuestionLikeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionLikeStateInitialCopyWith<$Res> {
  factory _$$QuestionLikeStateInitialCopyWith(_$QuestionLikeStateInitial value,
          $Res Function(_$QuestionLikeStateInitial) then) =
      __$$QuestionLikeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionLikeStateInitialCopyWithImpl<$Res>
    extends _$QuestionLikeStateCopyWithImpl<$Res, _$QuestionLikeStateInitial>
    implements _$$QuestionLikeStateInitialCopyWith<$Res> {
  __$$QuestionLikeStateInitialCopyWithImpl(_$QuestionLikeStateInitial _value,
      $Res Function(_$QuestionLikeStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionLikeStateInitial implements QuestionLikeStateInitial {
  const _$QuestionLikeStateInitial();

  @override
  String toString() {
    return 'QuestionLikeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLikeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionFailure questionFailure) error,
    required TResult Function() loading,
    required TResult Function(Question question) likesuccess,
    required TResult Function(Question question) dislikesuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionFailure questionFailure)? error,
    TResult? Function()? loading,
    TResult? Function(Question question)? likesuccess,
    TResult? Function(Question question)? dislikesuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionFailure questionFailure)? error,
    TResult Function()? loading,
    TResult Function(Question question)? likesuccess,
    TResult Function(Question question)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLikeStateInitial value) initial,
    required TResult Function(QuestionLikeStateError value) error,
    required TResult Function(QuestionLikeStateLoading value) loading,
    required TResult Function(QuestionLikeStateSuccess value) likesuccess,
    required TResult Function(QuestionDisLikeStateSuccess value) dislikesuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionLikeStateInitial value)? initial,
    TResult? Function(QuestionLikeStateError value)? error,
    TResult? Function(QuestionLikeStateLoading value)? loading,
    TResult? Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult? Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLikeStateInitial value)? initial,
    TResult Function(QuestionLikeStateError value)? error,
    TResult Function(QuestionLikeStateLoading value)? loading,
    TResult Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuestionLikeStateInitial implements QuestionLikeState {
  const factory QuestionLikeStateInitial() = _$QuestionLikeStateInitial;
}

/// @nodoc
abstract class _$$QuestionLikeStateErrorCopyWith<$Res> {
  factory _$$QuestionLikeStateErrorCopyWith(_$QuestionLikeStateError value,
          $Res Function(_$QuestionLikeStateError) then) =
      __$$QuestionLikeStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionFailure questionFailure});

  $QuestionFailureCopyWith<$Res> get questionFailure;
}

/// @nodoc
class __$$QuestionLikeStateErrorCopyWithImpl<$Res>
    extends _$QuestionLikeStateCopyWithImpl<$Res, _$QuestionLikeStateError>
    implements _$$QuestionLikeStateErrorCopyWith<$Res> {
  __$$QuestionLikeStateErrorCopyWithImpl(_$QuestionLikeStateError _value,
      $Res Function(_$QuestionLikeStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionFailure = null,
  }) {
    return _then(_$QuestionLikeStateError(
      null == questionFailure
          ? _value.questionFailure
          : questionFailure // ignore: cast_nullable_to_non_nullable
              as QuestionFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionFailureCopyWith<$Res> get questionFailure {
    return $QuestionFailureCopyWith<$Res>(_value.questionFailure, (value) {
      return _then(_value.copyWith(questionFailure: value));
    });
  }
}

/// @nodoc

class _$QuestionLikeStateError implements QuestionLikeStateError {
  const _$QuestionLikeStateError(this.questionFailure);

  @override
  final QuestionFailure questionFailure;

  @override
  String toString() {
    return 'QuestionLikeState.error(questionFailure: $questionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLikeStateError &&
            (identical(other.questionFailure, questionFailure) ||
                other.questionFailure == questionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionLikeStateErrorCopyWith<_$QuestionLikeStateError> get copyWith =>
      __$$QuestionLikeStateErrorCopyWithImpl<_$QuestionLikeStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionFailure questionFailure) error,
    required TResult Function() loading,
    required TResult Function(Question question) likesuccess,
    required TResult Function(Question question) dislikesuccess,
  }) {
    return error(questionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionFailure questionFailure)? error,
    TResult? Function()? loading,
    TResult? Function(Question question)? likesuccess,
    TResult? Function(Question question)? dislikesuccess,
  }) {
    return error?.call(questionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionFailure questionFailure)? error,
    TResult Function()? loading,
    TResult Function(Question question)? likesuccess,
    TResult Function(Question question)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(questionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLikeStateInitial value) initial,
    required TResult Function(QuestionLikeStateError value) error,
    required TResult Function(QuestionLikeStateLoading value) loading,
    required TResult Function(QuestionLikeStateSuccess value) likesuccess,
    required TResult Function(QuestionDisLikeStateSuccess value) dislikesuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionLikeStateInitial value)? initial,
    TResult? Function(QuestionLikeStateError value)? error,
    TResult? Function(QuestionLikeStateLoading value)? loading,
    TResult? Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult? Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLikeStateInitial value)? initial,
    TResult Function(QuestionLikeStateError value)? error,
    TResult Function(QuestionLikeStateLoading value)? loading,
    TResult Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class QuestionLikeStateError implements QuestionLikeState {
  const factory QuestionLikeStateError(final QuestionFailure questionFailure) =
      _$QuestionLikeStateError;

  QuestionFailure get questionFailure;
  @JsonKey(ignore: true)
  _$$QuestionLikeStateErrorCopyWith<_$QuestionLikeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionLikeStateLoadingCopyWith<$Res> {
  factory _$$QuestionLikeStateLoadingCopyWith(_$QuestionLikeStateLoading value,
          $Res Function(_$QuestionLikeStateLoading) then) =
      __$$QuestionLikeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionLikeStateLoadingCopyWithImpl<$Res>
    extends _$QuestionLikeStateCopyWithImpl<$Res, _$QuestionLikeStateLoading>
    implements _$$QuestionLikeStateLoadingCopyWith<$Res> {
  __$$QuestionLikeStateLoadingCopyWithImpl(_$QuestionLikeStateLoading _value,
      $Res Function(_$QuestionLikeStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionLikeStateLoading implements QuestionLikeStateLoading {
  const _$QuestionLikeStateLoading();

  @override
  String toString() {
    return 'QuestionLikeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLikeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionFailure questionFailure) error,
    required TResult Function() loading,
    required TResult Function(Question question) likesuccess,
    required TResult Function(Question question) dislikesuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionFailure questionFailure)? error,
    TResult? Function()? loading,
    TResult? Function(Question question)? likesuccess,
    TResult? Function(Question question)? dislikesuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionFailure questionFailure)? error,
    TResult Function()? loading,
    TResult Function(Question question)? likesuccess,
    TResult Function(Question question)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLikeStateInitial value) initial,
    required TResult Function(QuestionLikeStateError value) error,
    required TResult Function(QuestionLikeStateLoading value) loading,
    required TResult Function(QuestionLikeStateSuccess value) likesuccess,
    required TResult Function(QuestionDisLikeStateSuccess value) dislikesuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionLikeStateInitial value)? initial,
    TResult? Function(QuestionLikeStateError value)? error,
    TResult? Function(QuestionLikeStateLoading value)? loading,
    TResult? Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult? Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLikeStateInitial value)? initial,
    TResult Function(QuestionLikeStateError value)? error,
    TResult Function(QuestionLikeStateLoading value)? loading,
    TResult Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionLikeStateLoading implements QuestionLikeState {
  const factory QuestionLikeStateLoading() = _$QuestionLikeStateLoading;
}

/// @nodoc
abstract class _$$QuestionLikeStateSuccessCopyWith<$Res> {
  factory _$$QuestionLikeStateSuccessCopyWith(_$QuestionLikeStateSuccess value,
          $Res Function(_$QuestionLikeStateSuccess) then) =
      __$$QuestionLikeStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});
}

/// @nodoc
class __$$QuestionLikeStateSuccessCopyWithImpl<$Res>
    extends _$QuestionLikeStateCopyWithImpl<$Res, _$QuestionLikeStateSuccess>
    implements _$$QuestionLikeStateSuccessCopyWith<$Res> {
  __$$QuestionLikeStateSuccessCopyWithImpl(_$QuestionLikeStateSuccess _value,
      $Res Function(_$QuestionLikeStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$QuestionLikeStateSuccess(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }
}

/// @nodoc

class _$QuestionLikeStateSuccess implements QuestionLikeStateSuccess {
  const _$QuestionLikeStateSuccess(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionLikeState.likesuccess(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionLikeStateSuccess &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionLikeStateSuccessCopyWith<_$QuestionLikeStateSuccess>
      get copyWith =>
          __$$QuestionLikeStateSuccessCopyWithImpl<_$QuestionLikeStateSuccess>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionFailure questionFailure) error,
    required TResult Function() loading,
    required TResult Function(Question question) likesuccess,
    required TResult Function(Question question) dislikesuccess,
  }) {
    return likesuccess(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionFailure questionFailure)? error,
    TResult? Function()? loading,
    TResult? Function(Question question)? likesuccess,
    TResult? Function(Question question)? dislikesuccess,
  }) {
    return likesuccess?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionFailure questionFailure)? error,
    TResult Function()? loading,
    TResult Function(Question question)? likesuccess,
    TResult Function(Question question)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (likesuccess != null) {
      return likesuccess(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLikeStateInitial value) initial,
    required TResult Function(QuestionLikeStateError value) error,
    required TResult Function(QuestionLikeStateLoading value) loading,
    required TResult Function(QuestionLikeStateSuccess value) likesuccess,
    required TResult Function(QuestionDisLikeStateSuccess value) dislikesuccess,
  }) {
    return likesuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionLikeStateInitial value)? initial,
    TResult? Function(QuestionLikeStateError value)? error,
    TResult? Function(QuestionLikeStateLoading value)? loading,
    TResult? Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult? Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
  }) {
    return likesuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLikeStateInitial value)? initial,
    TResult Function(QuestionLikeStateError value)? error,
    TResult Function(QuestionLikeStateLoading value)? loading,
    TResult Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (likesuccess != null) {
      return likesuccess(this);
    }
    return orElse();
  }
}

abstract class QuestionLikeStateSuccess implements QuestionLikeState {
  const factory QuestionLikeStateSuccess(final Question question) =
      _$QuestionLikeStateSuccess;

  Question get question;
  @JsonKey(ignore: true)
  _$$QuestionLikeStateSuccessCopyWith<_$QuestionLikeStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionDisLikeStateSuccessCopyWith<$Res> {
  factory _$$QuestionDisLikeStateSuccessCopyWith(
          _$QuestionDisLikeStateSuccess value,
          $Res Function(_$QuestionDisLikeStateSuccess) then) =
      __$$QuestionDisLikeStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});
}

/// @nodoc
class __$$QuestionDisLikeStateSuccessCopyWithImpl<$Res>
    extends _$QuestionLikeStateCopyWithImpl<$Res, _$QuestionDisLikeStateSuccess>
    implements _$$QuestionDisLikeStateSuccessCopyWith<$Res> {
  __$$QuestionDisLikeStateSuccessCopyWithImpl(
      _$QuestionDisLikeStateSuccess _value,
      $Res Function(_$QuestionDisLikeStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$QuestionDisLikeStateSuccess(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }
}

/// @nodoc

class _$QuestionDisLikeStateSuccess implements QuestionDisLikeStateSuccess {
  const _$QuestionDisLikeStateSuccess(this.question);

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionLikeState.dislikesuccess(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDisLikeStateSuccess &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDisLikeStateSuccessCopyWith<_$QuestionDisLikeStateSuccess>
      get copyWith => __$$QuestionDisLikeStateSuccessCopyWithImpl<
          _$QuestionDisLikeStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(QuestionFailure questionFailure) error,
    required TResult Function() loading,
    required TResult Function(Question question) likesuccess,
    required TResult Function(Question question) dislikesuccess,
  }) {
    return dislikesuccess(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(QuestionFailure questionFailure)? error,
    TResult? Function()? loading,
    TResult? Function(Question question)? likesuccess,
    TResult? Function(Question question)? dislikesuccess,
  }) {
    return dislikesuccess?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(QuestionFailure questionFailure)? error,
    TResult Function()? loading,
    TResult Function(Question question)? likesuccess,
    TResult Function(Question question)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (dislikesuccess != null) {
      return dislikesuccess(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionLikeStateInitial value) initial,
    required TResult Function(QuestionLikeStateError value) error,
    required TResult Function(QuestionLikeStateLoading value) loading,
    required TResult Function(QuestionLikeStateSuccess value) likesuccess,
    required TResult Function(QuestionDisLikeStateSuccess value) dislikesuccess,
  }) {
    return dislikesuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionLikeStateInitial value)? initial,
    TResult? Function(QuestionLikeStateError value)? error,
    TResult? Function(QuestionLikeStateLoading value)? loading,
    TResult? Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult? Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
  }) {
    return dislikesuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionLikeStateInitial value)? initial,
    TResult Function(QuestionLikeStateError value)? error,
    TResult Function(QuestionLikeStateLoading value)? loading,
    TResult Function(QuestionLikeStateSuccess value)? likesuccess,
    TResult Function(QuestionDisLikeStateSuccess value)? dislikesuccess,
    required TResult orElse(),
  }) {
    if (dislikesuccess != null) {
      return dislikesuccess(this);
    }
    return orElse();
  }
}

abstract class QuestionDisLikeStateSuccess implements QuestionLikeState {
  const factory QuestionDisLikeStateSuccess(final Question question) =
      _$QuestionDisLikeStateSuccess;

  Question get question;
  @JsonKey(ignore: true)
  _$$QuestionDisLikeStateSuccessCopyWith<_$QuestionDisLikeStateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
