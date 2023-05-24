// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_edit_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionEditState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionEditInitialState value) initial,
    required TResult Function(QuestionEditLoadingState value) loading,
    required TResult Function(QuestionEditSuccessState value) success,
    required TResult Function(QuestionEditFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionEditInitialState value)? initial,
    TResult? Function(QuestionEditLoadingState value)? loading,
    TResult? Function(QuestionEditSuccessState value)? success,
    TResult? Function(QuestionEditFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEditInitialState value)? initial,
    TResult Function(QuestionEditLoadingState value)? loading,
    TResult Function(QuestionEditSuccessState value)? success,
    TResult Function(QuestionEditFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEditStateCopyWith<$Res> {
  factory $QuestionEditStateCopyWith(
          QuestionEditState value, $Res Function(QuestionEditState) then) =
      _$QuestionEditStateCopyWithImpl<$Res, QuestionEditState>;
}

/// @nodoc
class _$QuestionEditStateCopyWithImpl<$Res, $Val extends QuestionEditState>
    implements $QuestionEditStateCopyWith<$Res> {
  _$QuestionEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionEditInitialStateCopyWith<$Res> {
  factory _$$QuestionEditInitialStateCopyWith(_$QuestionEditInitialState value,
          $Res Function(_$QuestionEditInitialState) then) =
      __$$QuestionEditInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionEditInitialStateCopyWithImpl<$Res>
    extends _$QuestionEditStateCopyWithImpl<$Res, _$QuestionEditInitialState>
    implements _$$QuestionEditInitialStateCopyWith<$Res> {
  __$$QuestionEditInitialStateCopyWithImpl(_$QuestionEditInitialState _value,
      $Res Function(_$QuestionEditInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionEditInitialState implements QuestionEditInitialState {
  const _$QuestionEditInitialState();

  @override
  String toString() {
    return 'QuestionEditState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEditInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Question question)? success,
    TResult Function(QuestionFailure questionFailure)? failure,
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
    required TResult Function(QuestionEditInitialState value) initial,
    required TResult Function(QuestionEditLoadingState value) loading,
    required TResult Function(QuestionEditSuccessState value) success,
    required TResult Function(QuestionEditFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionEditInitialState value)? initial,
    TResult? Function(QuestionEditLoadingState value)? loading,
    TResult? Function(QuestionEditSuccessState value)? success,
    TResult? Function(QuestionEditFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEditInitialState value)? initial,
    TResult Function(QuestionEditLoadingState value)? loading,
    TResult Function(QuestionEditSuccessState value)? success,
    TResult Function(QuestionEditFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuestionEditInitialState implements QuestionEditState {
  const factory QuestionEditInitialState() = _$QuestionEditInitialState;
}

/// @nodoc
abstract class _$$QuestionEditLoadingStateCopyWith<$Res> {
  factory _$$QuestionEditLoadingStateCopyWith(_$QuestionEditLoadingState value,
          $Res Function(_$QuestionEditLoadingState) then) =
      __$$QuestionEditLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionEditLoadingStateCopyWithImpl<$Res>
    extends _$QuestionEditStateCopyWithImpl<$Res, _$QuestionEditLoadingState>
    implements _$$QuestionEditLoadingStateCopyWith<$Res> {
  __$$QuestionEditLoadingStateCopyWithImpl(_$QuestionEditLoadingState _value,
      $Res Function(_$QuestionEditLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionEditLoadingState implements QuestionEditLoadingState {
  const _$QuestionEditLoadingState();

  @override
  String toString() {
    return 'QuestionEditState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEditLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(QuestionEditInitialState value) initial,
    required TResult Function(QuestionEditLoadingState value) loading,
    required TResult Function(QuestionEditSuccessState value) success,
    required TResult Function(QuestionEditFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionEditInitialState value)? initial,
    TResult? Function(QuestionEditLoadingState value)? loading,
    TResult? Function(QuestionEditSuccessState value)? success,
    TResult? Function(QuestionEditFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEditInitialState value)? initial,
    TResult Function(QuestionEditLoadingState value)? loading,
    TResult Function(QuestionEditSuccessState value)? success,
    TResult Function(QuestionEditFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class QuestionEditLoadingState implements QuestionEditState {
  const factory QuestionEditLoadingState() = _$QuestionEditLoadingState;
}

/// @nodoc
abstract class _$$QuestionEditSuccessStateCopyWith<$Res> {
  factory _$$QuestionEditSuccessStateCopyWith(_$QuestionEditSuccessState value,
          $Res Function(_$QuestionEditSuccessState) then) =
      __$$QuestionEditSuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionEditSuccessStateCopyWithImpl<$Res>
    extends _$QuestionEditStateCopyWithImpl<$Res, _$QuestionEditSuccessState>
    implements _$$QuestionEditSuccessStateCopyWith<$Res> {
  __$$QuestionEditSuccessStateCopyWithImpl(_$QuestionEditSuccessState _value,
      $Res Function(_$QuestionEditSuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$QuestionEditSuccessState(
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

class _$QuestionEditSuccessState implements QuestionEditSuccessState {
  const _$QuestionEditSuccessState({required this.question});

  @override
  final Question question;

  @override
  String toString() {
    return 'QuestionEditState.success(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEditSuccessState &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionEditSuccessStateCopyWith<_$QuestionEditSuccessState>
      get copyWith =>
          __$$QuestionEditSuccessStateCopyWithImpl<_$QuestionEditSuccessState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return success(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return success?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(QuestionEditInitialState value) initial,
    required TResult Function(QuestionEditLoadingState value) loading,
    required TResult Function(QuestionEditSuccessState value) success,
    required TResult Function(QuestionEditFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionEditInitialState value)? initial,
    TResult? Function(QuestionEditLoadingState value)? loading,
    TResult? Function(QuestionEditSuccessState value)? success,
    TResult? Function(QuestionEditFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEditInitialState value)? initial,
    TResult Function(QuestionEditLoadingState value)? loading,
    TResult Function(QuestionEditSuccessState value)? success,
    TResult Function(QuestionEditFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class QuestionEditSuccessState implements QuestionEditState {
  const factory QuestionEditSuccessState({required final Question question}) =
      _$QuestionEditSuccessState;

  Question get question;
  @JsonKey(ignore: true)
  _$$QuestionEditSuccessStateCopyWith<_$QuestionEditSuccessState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionEditFailureStateCopyWith<$Res> {
  factory _$$QuestionEditFailureStateCopyWith(_$QuestionEditFailureState value,
          $Res Function(_$QuestionEditFailureState) then) =
      __$$QuestionEditFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({QuestionFailure questionFailure});

  $QuestionFailureCopyWith<$Res> get questionFailure;
}

/// @nodoc
class __$$QuestionEditFailureStateCopyWithImpl<$Res>
    extends _$QuestionEditStateCopyWithImpl<$Res, _$QuestionEditFailureState>
    implements _$$QuestionEditFailureStateCopyWith<$Res> {
  __$$QuestionEditFailureStateCopyWithImpl(_$QuestionEditFailureState _value,
      $Res Function(_$QuestionEditFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionFailure = null,
  }) {
    return _then(_$QuestionEditFailureState(
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

class _$QuestionEditFailureState implements QuestionEditFailureState {
  const _$QuestionEditFailureState({required this.questionFailure});

  @override
  final QuestionFailure questionFailure;

  @override
  String toString() {
    return 'QuestionEditState.failure(questionFailure: $questionFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEditFailureState &&
            (identical(other.questionFailure, questionFailure) ||
                other.questionFailure == questionFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionEditFailureStateCopyWith<_$QuestionEditFailureState>
      get copyWith =>
          __$$QuestionEditFailureStateCopyWithImpl<_$QuestionEditFailureState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Question question) success,
    required TResult Function(QuestionFailure questionFailure) failure,
  }) {
    return failure(questionFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Question question)? success,
    TResult? Function(QuestionFailure questionFailure)? failure,
  }) {
    return failure?.call(questionFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(QuestionEditInitialState value) initial,
    required TResult Function(QuestionEditLoadingState value) loading,
    required TResult Function(QuestionEditSuccessState value) success,
    required TResult Function(QuestionEditFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionEditInitialState value)? initial,
    TResult? Function(QuestionEditLoadingState value)? loading,
    TResult? Function(QuestionEditSuccessState value)? success,
    TResult? Function(QuestionEditFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionEditInitialState value)? initial,
    TResult Function(QuestionEditLoadingState value)? loading,
    TResult Function(QuestionEditSuccessState value)? success,
    TResult Function(QuestionEditFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class QuestionEditFailureState implements QuestionEditState {
  const factory QuestionEditFailureState(
          {required final QuestionFailure questionFailure}) =
      _$QuestionEditFailureState;

  QuestionFailure get questionFailure;
  @JsonKey(ignore: true)
  _$$QuestionEditFailureStateCopyWith<_$QuestionEditFailureState>
      get copyWith => throw _privateConstructorUsedError;
}
