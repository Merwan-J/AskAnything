// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  Name get name => throw _privateConstructorUsedError;
  Password get oldPassword => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Name name, Password oldPassword,
            Password newPassword, Password confirmPassword)
        passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Name name, Password oldPassword, Password newPassword,
            Password confirmPassword)?
        passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Name name, Password oldPassword, Password newPassword,
            Password confirmPassword)?
        passwordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordSubmitted value) passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordSubmitted value)? passwordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordSubmitted value)? passwordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordEventCopyWith<ChangePasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
  @useResult
  $Res call(
      {Name name,
      Password oldPassword,
      Password newPassword,
      Password confirmPassword});
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordSubmittedCopyWith<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  factory _$$PasswordSubmittedCopyWith(
          _$PasswordSubmitted value, $Res Function(_$PasswordSubmitted) then) =
      __$$PasswordSubmittedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      Password oldPassword,
      Password newPassword,
      Password confirmPassword});
}

/// @nodoc
class __$$PasswordSubmittedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$PasswordSubmitted>
    implements _$$PasswordSubmittedCopyWith<$Res> {
  __$$PasswordSubmittedCopyWithImpl(
      _$PasswordSubmitted _value, $Res Function(_$PasswordSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$PasswordSubmitted(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$PasswordSubmitted implements PasswordSubmitted {
  const _$PasswordSubmitted(
      {required this.name,
      required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final Name name;
  @override
  final Password oldPassword;
  @override
  final Password newPassword;
  @override
  final Password confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.passwordSubmitted(name: $name, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordSubmitted &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, oldPassword, newPassword, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordSubmittedCopyWith<_$PasswordSubmitted> get copyWith =>
      __$$PasswordSubmittedCopyWithImpl<_$PasswordSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Name name, Password oldPassword,
            Password newPassword, Password confirmPassword)
        passwordSubmitted,
  }) {
    return passwordSubmitted(name, oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Name name, Password oldPassword, Password newPassword,
            Password confirmPassword)?
        passwordSubmitted,
  }) {
    return passwordSubmitted?.call(
        name, oldPassword, newPassword, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Name name, Password oldPassword, Password newPassword,
            Password confirmPassword)?
        passwordSubmitted,
    required TResult orElse(),
  }) {
    if (passwordSubmitted != null) {
      return passwordSubmitted(name, oldPassword, newPassword, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PasswordSubmitted value) passwordSubmitted,
  }) {
    return passwordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PasswordSubmitted value)? passwordSubmitted,
  }) {
    return passwordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PasswordSubmitted value)? passwordSubmitted,
    required TResult orElse(),
  }) {
    if (passwordSubmitted != null) {
      return passwordSubmitted(this);
    }
    return orElse();
  }
}

abstract class PasswordSubmitted implements ChangePasswordEvent {
  const factory PasswordSubmitted(
      {required final Name name,
      required final Password oldPassword,
      required final Password newPassword,
      required final Password confirmPassword}) = _$PasswordSubmitted;

  @override
  Name get name;
  @override
  Password get oldPassword;
  @override
  Password get newPassword;
  @override
  Password get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$PasswordSubmittedCopyWith<_$PasswordSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}
