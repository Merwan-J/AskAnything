// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(String? token, bool isFirstRun) initial,
    required TResult Function(User user, String token) authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(String? token, bool isFirstRun)? initial,
    TResult? Function(User user, String token)? authenticated,
    TResult? Function()? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(String? token, bool isFirstRun)? initial,
    TResult Function(User user, String token)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUnInitialized value) unInitialized,
    required TResult Function(AppInitialized value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUnInitialized value)? unInitialized,
    TResult? Function(AppInitialized value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUnInitialized value)? unInitialized,
    TResult Function(AppInitialized value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthUnInitializedCopyWith<$Res> {
  factory _$$AuthUnInitializedCopyWith(
          _$AuthUnInitialized value, $Res Function(_$AuthUnInitialized) then) =
      __$$AuthUnInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnInitializedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnInitialized>
    implements _$$AuthUnInitializedCopyWith<$Res> {
  __$$AuthUnInitializedCopyWithImpl(
      _$AuthUnInitialized _value, $Res Function(_$AuthUnInitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnInitialized implements AuthUnInitialized {
  const _$AuthUnInitialized();

  @override
  String toString() {
    return 'AuthState.unInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthUnInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(String? token, bool isFirstRun) initial,
    required TResult Function(User user, String token) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unInitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(String? token, bool isFirstRun)? initial,
    TResult? Function(User user, String token)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unInitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(String? token, bool isFirstRun)? initial,
    TResult Function(User user, String token)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unInitialized != null) {
      return unInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUnInitialized value) unInitialized,
    required TResult Function(AppInitialized value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
  }) {
    return unInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUnInitialized value)? unInitialized,
    TResult? Function(AppInitialized value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
  }) {
    return unInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUnInitialized value)? unInitialized,
    TResult Function(AppInitialized value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unInitialized != null) {
      return unInitialized(this);
    }
    return orElse();
  }
}

abstract class AuthUnInitialized implements AuthState {
  const factory AuthUnInitialized() = _$AuthUnInitialized;
}

/// @nodoc
abstract class _$$AppInitializedCopyWith<$Res> {
  factory _$$AppInitializedCopyWith(
          _$AppInitialized value, $Res Function(_$AppInitialized) then) =
      __$$AppInitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? token, bool isFirstRun});
}

/// @nodoc
class __$$AppInitializedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AppInitialized>
    implements _$$AppInitializedCopyWith<$Res> {
  __$$AppInitializedCopyWithImpl(
      _$AppInitialized _value, $Res Function(_$AppInitialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? isFirstRun = null,
  }) {
    return _then(_$AppInitialized(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      isFirstRun: null == isFirstRun
          ? _value.isFirstRun
          : isFirstRun // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppInitialized implements AppInitialized {
  const _$AppInitialized({this.token, required this.isFirstRun});

  @override
  final String? token;
  @override
  final bool isFirstRun;

  @override
  String toString() {
    return 'AuthState.initial(token: $token, isFirstRun: $isFirstRun)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInitialized &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isFirstRun, isFirstRun) ||
                other.isFirstRun == isFirstRun));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token, isFirstRun);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInitializedCopyWith<_$AppInitialized> get copyWith =>
      __$$AppInitializedCopyWithImpl<_$AppInitialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(String? token, bool isFirstRun) initial,
    required TResult Function(User user, String token) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return initial(token, isFirstRun);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(String? token, bool isFirstRun)? initial,
    TResult? Function(User user, String token)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return initial?.call(token, isFirstRun);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(String? token, bool isFirstRun)? initial,
    TResult Function(User user, String token)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(token, isFirstRun);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUnInitialized value) unInitialized,
    required TResult Function(AppInitialized value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUnInitialized value)? unInitialized,
    TResult? Function(AppInitialized value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUnInitialized value)? unInitialized,
    TResult Function(AppInitialized value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AppInitialized implements AuthState {
  const factory AppInitialized(
      {final String? token, required final bool isFirstRun}) = _$AppInitialized;

  String? get token;
  bool get isFirstRun;
  @JsonKey(ignore: true)
  _$$AppInitializedCopyWith<_$AppInitialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthAuthenticatedCopyWith<$Res> {
  factory _$$AuthAuthenticatedCopyWith(
          _$AuthAuthenticated value, $Res Function(_$AuthAuthenticated) then) =
      __$$AuthAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, String token});
}

/// @nodoc
class __$$AuthAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthenticated>
    implements _$$AuthAuthenticatedCopyWith<$Res> {
  __$$AuthAuthenticatedCopyWithImpl(
      _$AuthAuthenticated _value, $Res Function(_$AuthAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$AuthAuthenticated(
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

class _$AuthAuthenticated implements AuthAuthenticated {
  const _$AuthAuthenticated(this.user, this.token);

  @override
  final User user;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthenticatedCopyWith<_$AuthAuthenticated> get copyWith =>
      __$$AuthAuthenticatedCopyWithImpl<_$AuthAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(String? token, bool isFirstRun) initial,
    required TResult Function(User user, String token) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(String? token, bool isFirstRun)? initial,
    TResult? Function(User user, String token)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return authenticated?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(String? token, bool isFirstRun)? initial,
    TResult Function(User user, String token)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUnInitialized value) unInitialized,
    required TResult Function(AppInitialized value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUnInitialized value)? unInitialized,
    TResult? Function(AppInitialized value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUnInitialized value)? unInitialized,
    TResult Function(AppInitialized value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class AuthAuthenticated implements AuthState {
  const factory AuthAuthenticated(final User user, final String token) =
      _$AuthAuthenticated;

  User get user;
  String get token;
  @JsonKey(ignore: true)
  _$$AuthAuthenticatedCopyWith<_$AuthAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthUnauthenticatedCopyWith<$Res> {
  factory _$$AuthUnauthenticatedCopyWith(_$AuthUnauthenticated value,
          $Res Function(_$AuthUnauthenticated) then) =
      __$$AuthUnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthUnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnauthenticated>
    implements _$$AuthUnauthenticatedCopyWith<$Res> {
  __$$AuthUnauthenticatedCopyWithImpl(
      _$AuthUnauthenticated _value, $Res Function(_$AuthUnauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthUnauthenticated implements AuthUnauthenticated {
  const _$AuthUnauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthUnauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unInitialized,
    required TResult Function(String? token, bool isFirstRun) initial,
    required TResult Function(User user, String token) authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unInitialized,
    TResult? Function(String? token, bool isFirstRun)? initial,
    TResult? Function(User user, String token)? authenticated,
    TResult? Function()? unauthenticated,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unInitialized,
    TResult Function(String? token, bool isFirstRun)? initial,
    TResult Function(User user, String token)? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthUnInitialized value) unInitialized,
    required TResult Function(AppInitialized value) initial,
    required TResult Function(AuthAuthenticated value) authenticated,
    required TResult Function(AuthUnauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthUnInitialized value)? unInitialized,
    TResult? Function(AppInitialized value)? initial,
    TResult? Function(AuthAuthenticated value)? authenticated,
    TResult? Function(AuthUnauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthUnInitialized value)? unInitialized,
    TResult Function(AppInitialized value)? initial,
    TResult Function(AuthAuthenticated value)? authenticated,
    TResult Function(AuthUnauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class AuthUnauthenticated implements AuthState {
  const factory AuthUnauthenticated() = _$AuthUnauthenticated;
}
