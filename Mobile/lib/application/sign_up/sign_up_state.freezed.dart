// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Error error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInitial value)? initial,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateSuccess value)? success,
    TResult? Function(SignUpStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignUpStateInitialCopyWith<$Res> {
  factory _$$SignUpStateInitialCopyWith(_$SignUpStateInitial value,
          $Res Function(_$SignUpStateInitial) then) =
      __$$SignUpStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateInitialCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateInitial>
    implements _$$SignUpStateInitialCopyWith<$Res> {
  __$$SignUpStateInitialCopyWithImpl(
      _$SignUpStateInitial _value, $Res Function(_$SignUpStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateInitial implements SignUpStateInitial {
  const _$SignUpStateInitial();

  @override
  String toString() {
    return 'SignUpState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Error error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
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
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInitial value)? initial,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateSuccess value)? success,
    TResult? Function(SignUpStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SignUpStateInitial implements SignUpState {
  const factory SignUpStateInitial() = _$SignUpStateInitial;
}

/// @nodoc
abstract class _$$SignUpStateLoadingCopyWith<$Res> {
  factory _$$SignUpStateLoadingCopyWith(_$SignUpStateLoading value,
          $Res Function(_$SignUpStateLoading) then) =
      __$$SignUpStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateLoadingCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateLoading>
    implements _$$SignUpStateLoadingCopyWith<$Res> {
  __$$SignUpStateLoadingCopyWithImpl(
      _$SignUpStateLoading _value, $Res Function(_$SignUpStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateLoading implements SignUpStateLoading {
  const _$SignUpStateLoading();

  @override
  String toString() {
    return 'SignUpState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Error error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
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
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInitial value)? initial,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateSuccess value)? success,
    TResult? Function(SignUpStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignUpStateLoading implements SignUpState {
  const factory SignUpStateLoading() = _$SignUpStateLoading;
}

/// @nodoc
abstract class _$$SignUpStateSuccessCopyWith<$Res> {
  factory _$$SignUpStateSuccessCopyWith(_$SignUpStateSuccess value,
          $Res Function(_$SignUpStateSuccess) then) =
      __$$SignUpStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpStateSuccessCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSuccess>
    implements _$$SignUpStateSuccessCopyWith<$Res> {
  __$$SignUpStateSuccessCopyWithImpl(
      _$SignUpStateSuccess _value, $Res Function(_$SignUpStateSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpStateSuccess implements SignUpStateSuccess {
  const _$SignUpStateSuccess();

  @override
  String toString() {
    return 'SignUpState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignUpStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Error error)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
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
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInitial value)? initial,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateSuccess value)? success,
    TResult? Function(SignUpStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SignUpStateSuccess implements SignUpState {
  const factory SignUpStateSuccess() = _$SignUpStateSuccess;
}

/// @nodoc
abstract class _$$SignUpStateFailureCopyWith<$Res> {
  factory _$$SignUpStateFailureCopyWith(_$SignUpStateFailure value,
          $Res Function(_$SignUpStateFailure) then) =
      __$$SignUpStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$SignUpStateFailureCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateFailure>
    implements _$$SignUpStateFailureCopyWith<$Res> {
  __$$SignUpStateFailureCopyWithImpl(
      _$SignUpStateFailure _value, $Res Function(_$SignUpStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SignUpStateFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SignUpStateFailure implements SignUpStateFailure {
  const _$SignUpStateFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'SignUpState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateFailureCopyWith<_$SignUpStateFailure> get copyWith =>
      __$$SignUpStateFailureCopyWithImpl<_$SignUpStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(Error error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(Error error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignUpStateInitial value) initial,
    required TResult Function(SignUpStateLoading value) loading,
    required TResult Function(SignUpStateSuccess value) success,
    required TResult Function(SignUpStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignUpStateInitial value)? initial,
    TResult? Function(SignUpStateLoading value)? loading,
    TResult? Function(SignUpStateSuccess value)? success,
    TResult? Function(SignUpStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignUpStateInitial value)? initial,
    TResult Function(SignUpStateLoading value)? loading,
    TResult Function(SignUpStateSuccess value)? success,
    TResult Function(SignUpStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class SignUpStateFailure implements SignUpState {
  const factory SignUpStateFailure(final Error error) = _$SignUpStateFailure;

  Error get error;
  @JsonKey(ignore: true)
  _$$SignUpStateFailureCopyWith<_$SignUpStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
