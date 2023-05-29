// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpFormDto _$SignUpFormDtoFromJson(Map<String, dynamic> json) {
  return _SignUpFormDto.fromJson(json);
}

/// @nodoc
mixin _$SignUpFormDto {
  String get name => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpFormDtoCopyWith<SignUpFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormDtoCopyWith<$Res> {
  factory $SignUpFormDtoCopyWith(
          SignUpFormDto value, $Res Function(SignUpFormDto) then) =
      _$SignUpFormDtoCopyWithImpl<$Res, SignUpFormDto>;
  @useResult
  $Res call(
      {String name,
      String emailAddress,
      String password,
      String confirmPassword});
}

/// @nodoc
class _$SignUpFormDtoCopyWithImpl<$Res, $Val extends SignUpFormDto>
    implements $SignUpFormDtoCopyWith<$Res> {
  _$SignUpFormDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_SignUpFormDtoCopyWith<$Res>
    implements $SignUpFormDtoCopyWith<$Res> {
  factory _$$_SignUpFormDtoCopyWith(
          _$_SignUpFormDto value, $Res Function(_$_SignUpFormDto) then) =
      __$$_SignUpFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String emailAddress,
      String password,
      String confirmPassword});
}

/// @nodoc
class __$$_SignUpFormDtoCopyWithImpl<$Res>
    extends _$SignUpFormDtoCopyWithImpl<$Res, _$_SignUpFormDto>
    implements _$$_SignUpFormDtoCopyWith<$Res> {
  __$$_SignUpFormDtoCopyWithImpl(
      _$_SignUpFormDto _value, $Res Function(_$_SignUpFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_SignUpFormDto(
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
@JsonSerializable()
class _$_SignUpFormDto implements _SignUpFormDto {
  const _$_SignUpFormDto(
      {required this.name,
      required this.emailAddress,
      required this.password,
      required this.confirmPassword});

  factory _$_SignUpFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpFormDtoFromJson(json);

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
    return 'SignUpFormDto(name: $name, emailAddress: $emailAddress, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpFormDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, emailAddress, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormDtoCopyWith<_$_SignUpFormDto> get copyWith =>
      __$$_SignUpFormDtoCopyWithImpl<_$_SignUpFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpFormDtoToJson(
      this,
    );
  }
}

abstract class _SignUpFormDto implements SignUpFormDto {
  const factory _SignUpFormDto(
      {required final String name,
      required final String emailAddress,
      required final String password,
      required final String confirmPassword}) = _$_SignUpFormDto;

  factory _SignUpFormDto.fromJson(Map<String, dynamic> json) =
      _$_SignUpFormDto.fromJson;

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
  _$$_SignUpFormDtoCopyWith<_$_SignUpFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
