// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserFormDTO _$UserFormDTOFromJson(Map<String, dynamic> json) {
  return _UserFormDTO.fromJson(json);
}

/// @nodoc
mixin _$UserFormDTO {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFormDTOCopyWith<UserFormDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFormDTOCopyWith<$Res> {
  factory $UserFormDTOCopyWith(
          UserFormDTO value, $Res Function(UserFormDTO) then) =
      _$UserFormDTOCopyWithImpl<$Res, UserFormDTO>;
  @useResult
  $Res call({String name, String email, String password, String? profilePic});
}

/// @nodoc
class _$UserFormDTOCopyWithImpl<$Res, $Val extends UserFormDTO>
    implements $UserFormDTOCopyWith<$Res> {
  _$UserFormDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? profilePic = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFormDTOCopyWith<$Res>
    implements $UserFormDTOCopyWith<$Res> {
  factory _$$_UserFormDTOCopyWith(
          _$_UserFormDTO value, $Res Function(_$_UserFormDTO) then) =
      __$$_UserFormDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password, String? profilePic});
}

/// @nodoc
class __$$_UserFormDTOCopyWithImpl<$Res>
    extends _$UserFormDTOCopyWithImpl<$Res, _$_UserFormDTO>
    implements _$$_UserFormDTOCopyWith<$Res> {
  __$$_UserFormDTOCopyWithImpl(
      _$_UserFormDTO _value, $Res Function(_$_UserFormDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? profilePic = freezed,
  }) {
    return _then(_$_UserFormDTO(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFormDTO implements _UserFormDTO {
  const _$_UserFormDTO(
      {required this.name,
      required this.email,
      required this.password,
      this.profilePic});

  factory _$_UserFormDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserFormDTOFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? profilePic;

  @override
  String toString() {
    return 'UserFormDTO(name: $name, email: $email, password: $password, profilePic: $profilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFormDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, password, profilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFormDTOCopyWith<_$_UserFormDTO> get copyWith =>
      __$$_UserFormDTOCopyWithImpl<_$_UserFormDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFormDTOToJson(
      this,
    );
  }
}

abstract class _UserFormDTO implements UserFormDTO {
  const factory _UserFormDTO(
      {required final String name,
      required final String email,
      required final String password,
      final String? profilePic}) = _$_UserFormDTO;

  factory _UserFormDTO.fromJson(Map<String, dynamic> json) =
      _$_UserFormDTO.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String? get profilePic;
  @override
  @JsonKey(ignore: true)
  _$$_UserFormDTOCopyWith<_$_UserFormDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
