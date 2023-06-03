// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerStateCopyWith<$Res> {
  factory $AnswerStateCopyWith(
          AnswerState value, $Res Function(AnswerState) then) =
      _$AnswerStateCopyWithImpl<$Res, AnswerState>;
}

/// @nodoc
class _$AnswerStateCopyWithImpl<$Res, $Val extends AnswerState>
    implements $AnswerStateCopyWith<$Res> {
  _$AnswerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialAnswerStateCopyWith<$Res> {
  factory _$$InitialAnswerStateCopyWith(_$InitialAnswerState value,
          $Res Function(_$InitialAnswerState) then) =
      __$$InitialAnswerStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAnswerStateCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$InitialAnswerState>
    implements _$$InitialAnswerStateCopyWith<$Res> {
  __$$InitialAnswerStateCopyWithImpl(
      _$InitialAnswerState _value, $Res Function(_$InitialAnswerState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialAnswerState implements InitialAnswerState {
  const _$InitialAnswerState();

  @override
  String toString() {
    return 'AnswerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialAnswerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
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
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAnswerState implements AnswerState {
  const factory InitialAnswerState() = _$InitialAnswerState;
}

/// @nodoc
abstract class _$$SuccessAnswerEventCopyWith<$Res> {
  factory _$$SuccessAnswerEventCopyWith(_$SuccessAnswerEvent value,
          $Res Function(_$SuccessAnswerEvent) then) =
      __$$SuccessAnswerEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessAnswerEventCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$SuccessAnswerEvent>
    implements _$$SuccessAnswerEventCopyWith<$Res> {
  __$$SuccessAnswerEventCopyWithImpl(
      _$SuccessAnswerEvent _value, $Res Function(_$SuccessAnswerEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessAnswerEvent implements SuccessAnswerEvent {
  const _$SuccessAnswerEvent();

  @override
  String toString() {
    return 'AnswerState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessAnswerEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessAnswerEvent implements AnswerState {
  const factory SuccessAnswerEvent() = _$SuccessAnswerEvent;
}

/// @nodoc
abstract class _$$LoadingAnswerStateCopyWith<$Res> {
  factory _$$LoadingAnswerStateCopyWith(_$LoadingAnswerState value,
          $Res Function(_$LoadingAnswerState) then) =
      __$$LoadingAnswerStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAnswerStateCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$LoadingAnswerState>
    implements _$$LoadingAnswerStateCopyWith<$Res> {
  __$$LoadingAnswerStateCopyWithImpl(
      _$LoadingAnswerState _value, $Res Function(_$LoadingAnswerState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingAnswerState implements LoadingAnswerState {
  const _$LoadingAnswerState();

  @override
  String toString() {
    return 'AnswerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAnswerState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
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
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAnswerState implements AnswerState {
  const factory LoadingAnswerState() = _$LoadingAnswerState;
}

/// @nodoc
abstract class _$$LoadedAnswerStateCopyWith<$Res> {
  factory _$$LoadedAnswerStateCopyWith(
          _$LoadedAnswerState value, $Res Function(_$LoadedAnswerState) then) =
      __$$LoadedAnswerStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<AnswerFailure, Answer> answer});
}

/// @nodoc
class __$$LoadedAnswerStateCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$LoadedAnswerState>
    implements _$$LoadedAnswerStateCopyWith<$Res> {
  __$$LoadedAnswerStateCopyWithImpl(
      _$LoadedAnswerState _value, $Res Function(_$LoadedAnswerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$LoadedAnswerState(
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as Either<AnswerFailure, Answer>,
    ));
  }
}

/// @nodoc

class _$LoadedAnswerState implements LoadedAnswerState {
  const _$LoadedAnswerState(this.answer);

  @override
  final Either<AnswerFailure, Answer> answer;

  @override
  String toString() {
    return 'AnswerState.loaded(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAnswerState &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAnswerStateCopyWith<_$LoadedAnswerState> get copyWith =>
      __$$LoadedAnswerStateCopyWithImpl<_$LoadedAnswerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) {
    return loaded(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) {
    return loaded?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedAnswerState implements AnswerState {
  const factory LoadedAnswerState(final Either<AnswerFailure, Answer> answer) =
      _$LoadedAnswerState;

  Either<AnswerFailure, Answer> get answer;
  @JsonKey(ignore: true)
  _$$LoadedAnswerStateCopyWith<_$LoadedAnswerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorAnswerStateCopyWith<$Res> {
  factory _$$ErrorAnswerStateCopyWith(
          _$ErrorAnswerState value, $Res Function(_$ErrorAnswerState) then) =
      __$$ErrorAnswerStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorAnswerStateCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$ErrorAnswerState>
    implements _$$ErrorAnswerStateCopyWith<$Res> {
  __$$ErrorAnswerStateCopyWithImpl(
      _$ErrorAnswerState _value, $Res Function(_$ErrorAnswerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorAnswerState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAnswerState implements ErrorAnswerState {
  const _$ErrorAnswerState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AnswerState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAnswerState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAnswerStateCopyWith<_$ErrorAnswerState> get copyWith =>
      __$$ErrorAnswerStateCopyWithImpl<_$ErrorAnswerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAnswerState implements AnswerState {
  const factory ErrorAnswerState(final String message) = _$ErrorAnswerState;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorAnswerStateCopyWith<_$ErrorAnswerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListLoadedAnswerStateCopyWith<$Res> {
  factory _$$ListLoadedAnswerStateCopyWith(_$ListLoadedAnswerState value,
          $Res Function(_$ListLoadedAnswerState) then) =
      __$$ListLoadedAnswerStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Answer> answer});
}

/// @nodoc
class __$$ListLoadedAnswerStateCopyWithImpl<$Res>
    extends _$AnswerStateCopyWithImpl<$Res, _$ListLoadedAnswerState>
    implements _$$ListLoadedAnswerStateCopyWith<$Res> {
  __$$ListLoadedAnswerStateCopyWithImpl(_$ListLoadedAnswerState _value,
      $Res Function(_$ListLoadedAnswerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$ListLoadedAnswerState(
      null == answer
          ? _value._answer
          : answer // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
    ));
  }
}

/// @nodoc

class _$ListLoadedAnswerState implements ListLoadedAnswerState {
  const _$ListLoadedAnswerState(final List<Answer> answer) : _answer = answer;

  final List<Answer> _answer;
  @override
  List<Answer> get answer {
    if (_answer is EqualUnmodifiableListView) return _answer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answer);
  }

  @override
  String toString() {
    return 'AnswerState.listLoaded(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListLoadedAnswerState &&
            const DeepCollectionEquality().equals(other._answer, _answer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_answer));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListLoadedAnswerStateCopyWith<_$ListLoadedAnswerState> get copyWith =>
      __$$ListLoadedAnswerStateCopyWithImpl<_$ListLoadedAnswerState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() success,
    required TResult Function() loading,
    required TResult Function(Either<AnswerFailure, Answer> answer) loaded,
    required TResult Function(String message) error,
    required TResult Function(List<Answer> answer) listLoaded,
  }) {
    return listLoaded(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? success,
    TResult? Function()? loading,
    TResult? Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult? Function(String message)? error,
    TResult? Function(List<Answer> answer)? listLoaded,
  }) {
    return listLoaded?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? success,
    TResult Function()? loading,
    TResult Function(Either<AnswerFailure, Answer> answer)? loaded,
    TResult Function(String message)? error,
    TResult Function(List<Answer> answer)? listLoaded,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialAnswerState value) initial,
    required TResult Function(SuccessAnswerEvent value) success,
    required TResult Function(LoadingAnswerState value) loading,
    required TResult Function(LoadedAnswerState value) loaded,
    required TResult Function(ErrorAnswerState value) error,
    required TResult Function(ListLoadedAnswerState value) listLoaded,
  }) {
    return listLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialAnswerState value)? initial,
    TResult? Function(SuccessAnswerEvent value)? success,
    TResult? Function(LoadingAnswerState value)? loading,
    TResult? Function(LoadedAnswerState value)? loaded,
    TResult? Function(ErrorAnswerState value)? error,
    TResult? Function(ListLoadedAnswerState value)? listLoaded,
  }) {
    return listLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialAnswerState value)? initial,
    TResult Function(SuccessAnswerEvent value)? success,
    TResult Function(LoadingAnswerState value)? loading,
    TResult Function(LoadedAnswerState value)? loaded,
    TResult Function(ErrorAnswerState value)? error,
    TResult Function(ListLoadedAnswerState value)? listLoaded,
    required TResult orElse(),
  }) {
    if (listLoaded != null) {
      return listLoaded(this);
    }
    return orElse();
  }
}

abstract class ListLoadedAnswerState implements AnswerState {
  const factory ListLoadedAnswerState(final List<Answer> answer) =
      _$ListLoadedAnswerState;

  List<Answer> get answer;
  @JsonKey(ignore: true)
  _$$ListLoadedAnswerStateCopyWith<_$ListLoadedAnswerState> get copyWith =>
      throw _privateConstructorUsedError;
}
