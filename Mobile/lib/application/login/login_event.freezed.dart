// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  LoginForm get form => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginForm form) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginForm form)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginForm form)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventLogin value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventLogin value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventLogin value)? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({LoginForm form});

  $LoginFormCopyWith<$Res> get form;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_value.copyWith(
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as LoginForm,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoginFormCopyWith<$Res> get form {
    return $LoginFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginEventLoginCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$LoginEventLoginCopyWith(
          _$LoginEventLogin value, $Res Function(_$LoginEventLogin) then) =
      __$$LoginEventLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginForm form});

  @override
  $LoginFormCopyWith<$Res> get form;
}

/// @nodoc
class __$$LoginEventLoginCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginEventLogin>
    implements _$$LoginEventLoginCopyWith<$Res> {
  __$$LoginEventLoginCopyWithImpl(
      _$LoginEventLogin _value, $Res Function(_$LoginEventLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$LoginEventLogin(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as LoginForm,
    ));
  }
}

/// @nodoc

class _$LoginEventLogin extends LoginEventLogin {
  const _$LoginEventLogin(this.form) : super._();

  @override
  final LoginForm form;

  @override
  String toString() {
    return 'LoginEvent.login(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventLogin &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventLoginCopyWith<_$LoginEventLogin> get copyWith =>
      __$$LoginEventLoginCopyWithImpl<_$LoginEventLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginForm form) login,
  }) {
    return login(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginForm form)? login,
  }) {
    return login?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginForm form)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEventLogin value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEventLogin value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEventLogin value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEventLogin extends LoginEvent {
  const factory LoginEventLogin(final LoginForm form) = _$LoginEventLogin;
  const LoginEventLogin._() : super._();

  @override
  LoginForm get form;
  @override
  @JsonKey(ignore: true)
  _$$LoginEventLoginCopyWith<_$LoginEventLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
