// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpForm {
  String get name => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormCopyWith<SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormCopyWith<$Res> {
  factory $SignUpFormCopyWith(
          SignUpForm value, $Res Function(SignUpForm) then) =
      _$SignUpFormCopyWithImpl<$Res, SignUpForm>;
  @useResult
  $Res call(
      {String name,
      String emailAddress,
      String password,
      String confirmPassword});
}

/// @nodoc
class _$SignUpFormCopyWithImpl<$Res, $Val extends SignUpForm>
    implements $SignUpFormCopyWith<$Res> {
  _$SignUpFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignUpFormCopyWith<$Res>
    implements $SignUpFormCopyWith<$Res> {
  factory _$$_SignUpFormCopyWith(
          _$_SignUpForm value, $Res Function(_$_SignUpForm) then) =
      __$$_SignUpFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String emailAddress,
      String password,
      String confirmPassword});
}

/// @nodoc
class __$$_SignUpFormCopyWithImpl<$Res>
    extends _$SignUpFormCopyWithImpl<$Res, _$_SignUpForm>
    implements _$$_SignUpFormCopyWith<$Res> {
  __$$_SignUpFormCopyWithImpl(
      _$_SignUpForm _value, $Res Function(_$_SignUpForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_SignUpForm(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignUpForm implements _SignUpForm {
  const _$_SignUpForm(
      {required this.name,
      required this.emailAddress,
      required this.password,
      required this.confirmPassword});

  @override
  final String name;
  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'SignUpForm(name: $name, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpForm &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, emailAddress, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormCopyWith<_$_SignUpForm> get copyWith =>
      __$$_SignUpFormCopyWithImpl<_$_SignUpForm>(this, _$identity);
}

abstract class _SignUpForm implements SignUpForm {
  const factory _SignUpForm(
      {required final String name,
      required final String emailAddress,
      required final String password,
      required final String confirmPassword}) = _$_SignUpForm;

  @override
  String get name;
  @override
  String get emailAddress;
  @override
  String get password;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFormCopyWith<_$_SignUpForm> get copyWith =>
      throw _privateConstructorUsedError;
}
