// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionPostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostEmptyState value) empty,
    required TResult Function(QuestionPostLoadingState value) loading,
    required TResult Function(QuestionPostSuccessState value) success,
    required TResult Function(QuestionPostFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostEmptyState value)? empty,
    TResult? Function(QuestionPostLoadingState value)? loading,
    TResult? Function(QuestionPostSuccessState value)? success,
    TResult? Function(QuestionPostFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostEmptyState value)? empty,
    TResult Function(QuestionPostLoadingState value)? loading,
    TResult Function(QuestionPostSuccessState value)? success,
    TResult Function(QuestionPostFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionPostStateCopyWith<$Res> {
  factory $QuestionPostStateCopyWith(
          QuestionPostState value, $Res Function(QuestionPostState) then) =
      _$QuestionPostStateCopyWithImpl<$Res, QuestionPostState>;
}

/// @nodoc
class _$QuestionPostStateCopyWithImpl<$Res, $Val extends QuestionPostState>
    implements $QuestionPostStateCopyWith<$Res> {
  _$QuestionPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionPostEmptyStateCopyWith<$Res> {
  factory _$$QuestionPostEmptyStateCopyWith(_$QuestionPostEmptyState value,
          $Res Function(_$QuestionPostEmptyState) then) =
      __$$QuestionPostEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionPostEmptyStateCopyWithImpl<$Res>
    extends _$QuestionPostStateCopyWithImpl<$Res, _$QuestionPostEmptyState>
    implements _$$QuestionPostEmptyStateCopyWith<$Res> {
  __$$QuestionPostEmptyStateCopyWithImpl(_$QuestionPostEmptyState _value,
      $Res Function(_$QuestionPostEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionPostEmptyState implements QuestionPostEmptyState {
  const _$QuestionPostEmptyState();

  @override
  String toString() {
    return 'QuestionPostState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QuestionPostEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostEmptyState value) empty,
    required TResult Function(QuestionPostLoadingState value) loading,
    required TResult Function(QuestionPostSuccessState value) success,
    required TResult Function(QuestionPostFailureState value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostEmptyState value)? empty,
    TResult? Function(QuestionPostLoadingState value)? loading,
    TResult? Function(QuestionPostSuccessState value)? success,
    TResult? Function(QuestionPostFailureState value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostEmptyState value)? empty,
    TResult Function(QuestionPostLoadingState value)? loading,
    TResult Function(QuestionPostSuccessState value)? success,
    TResult Function(QuestionPostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class QuestionPostEmptyState implements QuestionPostState {
  const factory QuestionPostEmptyState() = _$QuestionPostEmptyState;
}

/// @nodoc
abstract class _$$QuestionPostLoadingStateCopyWith<$Res> {
  factory _$$QuestionPostLoadingStateCopyWith(_$QuestionPostLoadingState value,
          $Res Function(_$QuestionPostLoadingState) then) =
      __$$QuestionPostLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionPostLoadingStateCopyWithImpl<$Res>
    extends _$QuestionPostStateCopyWithImpl<$Res, _$QuestionPostLoadingState>
    implements _$$QuestionPostLoadingStateCopyWith<$Res> {
  __$$QuestionPostLoadingStateCopyWithImpl(_$QuestionPostLoadingState _value,
      $Res Function(_$QuestionPostLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionPostLoadingState implements QuestionPostLoadingState {
  const _$QuestionPostLoadingState();

  @override
  String toString() {
    return 'QuestionPostState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
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
    required TResult Function(QuestionPostEmptyState value) empty,
    required TResult Function(QuestionPostLoadingState value) loading,
    required TResult Function(QuestionPostSuccessState value) success,
    required TResult Function(QuestionPostFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostEmptyState value)? empty,
    TResult? Function(QuestionPostLoadingState value)? loading,
    TResult? Function(QuestionPostSuccessState value)? success,
    TResult? Function(QuestionPostFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostEmptyState value)? empty,
    TResult Function(QuestionPostLoadingState value)? loading,
    TResult Function(QuestionPostSuccessState value)? success,
    TResult Function(QuestionPostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionPostLoadingState implements QuestionPostState {
  const factory QuestionPostLoadingState() = _$QuestionPostLoadingState;
}

/// @nodoc
abstract class _$$QuestionPostSuccessStateCopyWith<$Res> {
  factory _$$QuestionPostSuccessStateCopyWith(_$QuestionPostSuccessState value,
          $Res Function(_$QuestionPostSuccessState) then) =
      __$$QuestionPostSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionPostSuccessStateCopyWithImpl<$Res>
    extends _$QuestionPostStateCopyWithImpl<$Res, _$QuestionPostSuccessState>
    implements _$$QuestionPostSuccessStateCopyWith<$Res> {
  __$$QuestionPostSuccessStateCopyWithImpl(_$QuestionPostSuccessState _value,
      $Res Function(_$QuestionPostSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$QuestionPostSuccessState(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$QuestionPostSuccessState implements QuestionPostSuccessState {
  const _$QuestionPostSuccessState({required this.question});

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionPostState.success(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostSuccessState &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionPostSuccessStateCopyWith<_$QuestionPostSuccessState>
      get copyWith =>
          __$$QuestionPostSuccessStateCopyWithImpl<_$QuestionPostSuccessState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return success(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return success?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostEmptyState value) empty,
    required TResult Function(QuestionPostLoadingState value) loading,
    required TResult Function(QuestionPostSuccessState value) success,
    required TResult Function(QuestionPostFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostEmptyState value)? empty,
    TResult? Function(QuestionPostLoadingState value)? loading,
    TResult? Function(QuestionPostSuccessState value)? success,
    TResult? Function(QuestionPostFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostEmptyState value)? empty,
    TResult Function(QuestionPostLoadingState value)? loading,
    TResult Function(QuestionPostSuccessState value)? success,
    TResult Function(QuestionPostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class QuestionPostSuccessState implements QuestionPostState {
  const factory QuestionPostSuccessState({required final Question question}) =
      _$QuestionPostSuccessState;

  Question get question;
  @JsonKey(ignore: true)
  _$$QuestionPostSuccessStateCopyWith<_$QuestionPostSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionPostFailureStateCopyWith<$Res> {
  factory _$$QuestionPostFailureStateCopyWith(_$QuestionPostFailureState value,
          $Res Function(_$QuestionPostFailureState) then) =
      __$$QuestionPostFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionFailure questionFailure});

  $QuestionFailureCopyWith<$Res> get questionFailure;
}

/// @nodoc
class __$$QuestionPostFailureStateCopyWithImpl<$Res>
    extends _$QuestionPostStateCopyWithImpl<$Res, _$QuestionPostFailureState>
    implements _$$QuestionPostFailureStateCopyWith<$Res> {
  __$$QuestionPostFailureStateCopyWithImpl(_$QuestionPostFailureState _value,
      $Res Function(_$QuestionPostFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionFailure = null,
  }) {
    return _then(_$QuestionPostFailureState(
      questionFailure: null == questionFailure
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

class _$QuestionPostFailureState implements QuestionPostFailureState {
  const _$QuestionPostFailureState({required this.questionFailure});

  @override
  final QuestionFailure questionFailure;

  @override
  String toString() {
    return 'QuestionPostState.failure(questionFailure: $questionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostFailureState &&
            (identical(other.questionFailure, questionFailure) ||
                other.questionFailure == questionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionPostFailureStateCopyWith<_$QuestionPostFailureState>
      get copyWith =>
          __$$QuestionPostFailureStateCopyWithImpl<_$QuestionPostFailureState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return failure(questionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return failure?.call(questionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(questionFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostEmptyState value) empty,
    required TResult Function(QuestionPostLoadingState value) loading,
    required TResult Function(QuestionPostSuccessState value) success,
    required TResult Function(QuestionPostFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostEmptyState value)? empty,
    TResult? Function(QuestionPostLoadingState value)? loading,
    TResult? Function(QuestionPostSuccessState value)? success,
    TResult? Function(QuestionPostFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostEmptyState value)? empty,
    TResult Function(QuestionPostLoadingState value)? loading,
    TResult Function(QuestionPostSuccessState value)? success,
    TResult Function(QuestionPostFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class QuestionPostFailureState implements QuestionPostState {
  const factory QuestionPostFailureState(
          {required final QuestionFailure questionFailure}) =
      _$QuestionPostFailureState;

  QuestionFailure get questionFailure;
  @JsonKey(ignore: true)
  _$$QuestionPostFailureStateCopyWith<_$QuestionPostFailureState>
      get copyWith => throw _privateConstructorUsedError;
}
