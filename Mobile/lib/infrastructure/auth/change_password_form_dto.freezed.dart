// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChangePasswordFormDto _$ChangePasswordFormDtoFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordFormDto.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordFormDto {
  String get name => throw _privateConstructorUsedError;
  String get oldPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChangePasswordFormDtoCopyWith<ChangePasswordFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordFormDtoCopyWith<$Res> {
  factory $ChangePasswordFormDtoCopyWith(ChangePasswordFormDto value,
          $Res Function(ChangePasswordFormDto) then) =
      _$ChangePasswordFormDtoCopyWithImpl<$Res, ChangePasswordFormDto>;
  @useResult
  $Res call(
      {String name,
      String oldPassword,
      String newPassword,
      String confirmPassword});
}

/// @nodoc
class _$ChangePasswordFormDtoCopyWithImpl<$Res,
        $Val extends ChangePasswordFormDto>
    implements $ChangePasswordFormDtoCopyWith<$Res> {
  _$ChangePasswordFormDtoCopyWithImpl(this._value, this._then);

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
              as String,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordFormDtoCopyWith<$Res>
    implements $ChangePasswordFormDtoCopyWith<$Res> {
  factory _$$_ChangePasswordFormDtoCopyWith(_$_ChangePasswordFormDto value,
          $Res Function(_$_ChangePasswordFormDto) then) =
      __$$_ChangePasswordFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String oldPassword,
      String newPassword,
      String confirmPassword});
}

/// @nodoc
class __$$_ChangePasswordFormDtoCopyWithImpl<$Res>
    extends _$ChangePasswordFormDtoCopyWithImpl<$Res, _$_ChangePasswordFormDto>
    implements _$$_ChangePasswordFormDtoCopyWith<$Res> {
  __$$_ChangePasswordFormDtoCopyWithImpl(_$_ChangePasswordFormDto _value,
      $Res Function(_$_ChangePasswordFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
  }) {
    return _then(_$_ChangePasswordFormDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
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
class _$_ChangePasswordFormDto implements _ChangePasswordFormDto {
  _$_ChangePasswordFormDto(
      {required this.name,
      required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword});

  factory _$_ChangePasswordFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordFormDtoFromJson(json);

  @override
  final String name;
  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'ChangePasswordFormDto(name: $name, oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordFormDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, oldPassword, newPassword, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordFormDtoCopyWith<_$_ChangePasswordFormDto> get copyWith =>
      __$$_ChangePasswordFormDtoCopyWithImpl<_$_ChangePasswordFormDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordFormDtoToJson(
      this,
    );
  }
}

abstract class _ChangePasswordFormDto implements ChangePasswordFormDto {
  factory _ChangePasswordFormDto(
      {required final String name,
      required final String oldPassword,
      required final String newPassword,
      required final String confirmPassword}) = _$_ChangePasswordFormDto;

  factory _ChangePasswordFormDto.fromJson(Map<String, dynamic> json) =
      _$_ChangePasswordFormDto.fromJson;

  @override
  String get name;
  @override
  String get oldPassword;
  @override
  String get newPassword;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordFormDtoCopyWith<_$_ChangePasswordFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
