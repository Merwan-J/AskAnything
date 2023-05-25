// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(User user)? $default, {
    TResult? Function(User user, String token)? signedIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(AuthEventSignedIn value)? signedIn,
    TResult? Function(AuthEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignUpFormCopyWith<$Res> {
  factory _$$_SignUpFormCopyWith(
          _$_SignUpForm value, $Res Function(_$_SignUpForm) then) =
      __$$_SignUpFormCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_SignUpFormCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpForm>
    implements _$$_SignUpFormCopyWith<$Res> {
  __$$_SignUpFormCopyWithImpl(
      _$_SignUpForm _value, $Res Function(_$_SignUpForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_SignUpForm(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_SignUpForm implements _SignUpForm {
  const _$_SignUpForm(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpForm &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormCopyWith<_$_SignUpForm> get copyWith =>
      __$$_SignUpFormCopyWithImpl<_$_SignUpForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) {
    return $default(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(User user)? $default, {
    TResult? Function(User user, String token)? signedIn,
    TResult? Function()? signOut,
  }) {
    return $default?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(AuthEventSignedIn value)? signedIn,
    TResult? Function(AuthEventSignOut value)? signOut,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignUpForm implements AuthEvent {
  const factory _SignUpForm(final User user) = _$_SignUpForm;

  User get user;
  @JsonKey(ignore: true)
  _$$_SignUpFormCopyWith<_$_SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignedInCopyWith<$Res> {
  factory _$$AuthEventSignedInCopyWith(
          _$AuthEventSignedIn value, $Res Function(_$AuthEventSignedIn) then) =
      __$$AuthEventSignedInCopyWithImpl<$Res>;
  @useResult
  $Res call({User user, String token});
}

/// @nodoc
class __$$AuthEventSignedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignedIn>
    implements _$$AuthEventSignedInCopyWith<$Res> {
  __$$AuthEventSignedInCopyWithImpl(
      _$AuthEventSignedIn _value, $Res Function(_$AuthEventSignedIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$AuthEventSignedIn(
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

class _$AuthEventSignedIn implements AuthEventSignedIn {
  const _$AuthEventSignedIn(this.user, this.token);

  @override
  final User user;
  @override
  final String token;

  @override
  String toString() {
    return 'AuthEvent.signedIn(user: $user, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthEventSignedIn &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthEventSignedInCopyWith<_$AuthEventSignedIn> get copyWith =>
      __$$AuthEventSignedInCopyWithImpl<_$AuthEventSignedIn>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) {
    return signedIn(user, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(User user)? $default, {
    TResult? Function(User user, String token)? signedIn,
    TResult? Function()? signOut,
  }) {
    return signedIn?.call(user, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(user, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) {
    return signedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(AuthEventSignedIn value)? signedIn,
    TResult? Function(AuthEventSignOut value)? signOut,
  }) {
    return signedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signedIn != null) {
      return signedIn(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignedIn implements AuthEvent {
  const factory AuthEventSignedIn(final User user, final String token) =
      _$AuthEventSignedIn;

  User get user;
  String get token;
  @JsonKey(ignore: true)
  _$$AuthEventSignedInCopyWith<_$AuthEventSignedIn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthEventSignOutCopyWith<$Res> {
  factory _$$AuthEventSignOutCopyWith(
          _$AuthEventSignOut value, $Res Function(_$AuthEventSignOut) then) =
      __$$AuthEventSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthEventSignOutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$AuthEventSignOut>
    implements _$$AuthEventSignOutCopyWith<$Res> {
  __$$AuthEventSignOutCopyWithImpl(
      _$AuthEventSignOut _value, $Res Function(_$AuthEventSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthEventSignOut implements AuthEventSignOut {
  const _$AuthEventSignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthEventSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(User user) $default, {
    required TResult Function(User user, String token) signedIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(User user)? $default, {
    TResult? Function(User user, String token)? signedIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(User user)? $default, {
    TResult Function(User user, String token)? signedIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SignUpForm value) $default, {
    required TResult Function(AuthEventSignedIn value) signedIn,
    required TResult Function(AuthEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SignUpForm value)? $default, {
    TResult? Function(AuthEventSignedIn value)? signedIn,
    TResult? Function(AuthEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SignUpForm value)? $default, {
    TResult Function(AuthEventSignedIn value)? signedIn,
    TResult Function(AuthEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class AuthEventSignOut implements AuthEvent {
  const factory AuthEventSignOut() = _$AuthEventSignOut;
}
