// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, String token)? success,
    TResult? Function(Error error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateInitialCopyWith<$Res> {
  factory _$$LoginStateInitialCopyWith(
          _$LoginStateInitial value, $Res Function(_$LoginStateInitial) then) =
      __$$LoginStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateInitialCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateInitial>
    implements _$$LoginStateInitialCopyWith<$Res> {
  __$$LoginStateInitialCopyWithImpl(
      _$LoginStateInitial _value, $Res Function(_$LoginStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateInitial implements LoginStateInitial {
  const _$LoginStateInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, String token)? success,
    TResult? Function(Error error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
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
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginStateInitial implements LoginState {
  const factory LoginStateInitial() = _$LoginStateInitial;
}

/// @nodoc
abstract class _$$LoginStateLoadingCopyWith<$Res> {
  factory _$$LoginStateLoadingCopyWith(
          _$LoginStateLoading value, $Res Function(_$LoginStateLoading) then) =
      __$$LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoading>
    implements _$$LoginStateLoadingCopyWith<$Res> {
  __$$LoginStateLoadingCopyWithImpl(
      _$LoginStateLoading _value, $Res Function(_$LoginStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateLoading implements LoginStateLoading {
  const _$LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, String token)? success,
    TResult? Function(Error error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
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
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoading;
}

/// @nodoc
abstract class _$$LoginStateSuccessCopyWith<$Res> {
  factory _$$LoginStateSuccessCopyWith(
          _$LoginStateSuccess value, $Res Function(_$LoginStateSuccess) then) =
      __$$LoginStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, String token});
}

/// @nodoc
class __$$LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateSuccess>
    implements _$$LoginStateSuccessCopyWith<$Res> {
  __$$LoginStateSuccessCopyWithImpl(
      _$LoginStateSuccess _value, $Res Function(_$LoginStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$LoginStateSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateSuccess implements LoginStateSuccess {
  const _$LoginStateSuccess(this.user, this.token);

  @override
  final User user;
  @override
  final String token;

  @override
  String toString() {
    return 'LoginState.success(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateSuccess &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateSuccessCopyWith<_$LoginStateSuccess> get copyWith =>
      __$$LoginStateSuccessCopyWithImpl<_$LoginStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return success(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, String token)? success,
    TResult? Function(Error error)? failure,
  }) {
    return success?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginStateSuccess implements LoginState {
  const factory LoginStateSuccess(final User user, final String token) =
      _$LoginStateSuccess;

  User get user;
  String get token;
  @JsonKey(ignore: true)
  _$$LoginStateSuccessCopyWith<_$LoginStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateFailureCopyWith<$Res> {
  factory _$$LoginStateFailureCopyWith(
          _$LoginStateFailure value, $Res Function(_$LoginStateFailure) then) =
      __$$LoginStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$LoginStateFailureCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateFailure>
    implements _$$LoginStateFailureCopyWith<$Res> {
  __$$LoginStateFailureCopyWithImpl(
      _$LoginStateFailure _value, $Res Function(_$LoginStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginStateFailure(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$LoginStateFailure implements LoginStateFailure {
  const _$LoginStateFailure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'LoginState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateFailure &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateFailureCopyWith<_$LoginStateFailure> get copyWith =>
      __$$LoginStateFailureCopyWithImpl<_$LoginStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(User user, String token) success,
    required TResult Function(Error error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(User user, String token)? success,
    TResult? Function(Error error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(User user, String token)? success,
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
    required TResult Function(LoginStateInitial value) initial,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInitial value)? initial,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInitial value)? initial,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LoginStateFailure implements LoginState {
  const factory LoginStateFailure(final Error error) = _$LoginStateFailure;

  Error get error;
  @JsonKey(ignore: true)
  _$$LoginStateFailureCopyWith<_$LoginStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
