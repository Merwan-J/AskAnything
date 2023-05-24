// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileFormDto _$ProfileFormDtoFromJson(Map<String, dynamic> json) {
  return _ProfileFormDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileFormDto {
  String get email => throw _privateConstructorUsedError;
  String get ProfilePicture => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileFormDtoCopyWith<ProfileFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileFormDtoCopyWith<$Res> {
  factory $ProfileFormDtoCopyWith(
          ProfileFormDto value, $Res Function(ProfileFormDto) then) =
      _$ProfileFormDtoCopyWithImpl<$Res, ProfileFormDto>;
  @useResult
  $Res call({String email, String ProfilePicture, String userName});
}

/// @nodoc
class _$ProfileFormDtoCopyWithImpl<$Res, $Val extends ProfileFormDto>
    implements $ProfileFormDtoCopyWith<$Res> {
  _$ProfileFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? ProfilePicture = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      ProfilePicture: null == ProfilePicture
          ? _value.ProfilePicture
          : ProfilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileFormDtoCopyWith<$Res>
    implements $ProfileFormDtoCopyWith<$Res> {
  factory _$$_ProfileFormDtoCopyWith(
          _$_ProfileFormDto value, $Res Function(_$_ProfileFormDto) then) =
      __$$_ProfileFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String ProfilePicture, String userName});
}

/// @nodoc
class __$$_ProfileFormDtoCopyWithImpl<$Res>
    extends _$ProfileFormDtoCopyWithImpl<$Res, _$_ProfileFormDto>
    implements _$$_ProfileFormDtoCopyWith<$Res> {
  __$$_ProfileFormDtoCopyWithImpl(
      _$_ProfileFormDto _value, $Res Function(_$_ProfileFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? ProfilePicture = null,
    Object? userName = null,
  }) {
    return _then(_$_ProfileFormDto(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      ProfilePicture: null == ProfilePicture
          ? _value.ProfilePicture
          : ProfilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileFormDto implements _ProfileFormDto {
  const _$_ProfileFormDto(
      {required this.email,
      required this.ProfilePicture,
      required this.userName});

  factory _$_ProfileFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFormDtoFromJson(json);

  @override
  final String email;
  @override
  final String ProfilePicture;
  @override
  final String userName;

  @override
  String toString() {
    return 'ProfileFormDto(email: $email, ProfilePicture: $ProfilePicture, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileFormDto &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.ProfilePicture, ProfilePicture) ||
                other.ProfilePicture == ProfilePicture) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, ProfilePicture, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileFormDtoCopyWith<_$_ProfileFormDto> get copyWith =>
      __$$_ProfileFormDtoCopyWithImpl<_$_ProfileFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileFormDtoToJson(
      this,
    );
  }
}

abstract class _ProfileFormDto implements ProfileFormDto {
  const factory _ProfileFormDto(
      {required final String email,
      required final String ProfilePicture,
      required final String userName}) = _$_ProfileFormDto;

  factory _ProfileFormDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileFormDto.fromJson;

  @override
  String get email;
  @override
  String get ProfilePicture;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileFormDtoCopyWith<_$_ProfileFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
