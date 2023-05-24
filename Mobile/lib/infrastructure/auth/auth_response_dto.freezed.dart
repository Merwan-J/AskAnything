// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) {
  return _AuthResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AuthResponseDto {
  UserDTO get user => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthResponseDtoCopyWith<AuthResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseDtoCopyWith<$Res> {
  factory $AuthResponseDtoCopyWith(
          AuthResponseDto value, $Res Function(AuthResponseDto) then) =
      _$AuthResponseDtoCopyWithImpl<$Res, AuthResponseDto>;
  @useResult
  $Res call({UserDTO user, String accessToken});

  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthResponseDtoCopyWithImpl<$Res, $Val extends AuthResponseDto>
    implements $AuthResponseDtoCopyWith<$Res> {
  _$AuthResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDTOCopyWith<$Res> get user {
    return $UserDTOCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthResponseDtoCopyWith<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  factory _$$_AuthResponseDtoCopyWith(
          _$_AuthResponseDto value, $Res Function(_$_AuthResponseDto) then) =
      __$$_AuthResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserDTO user, String accessToken});

  @override
  $UserDTOCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthResponseDtoCopyWithImpl<$Res>
    extends _$AuthResponseDtoCopyWithImpl<$Res, _$_AuthResponseDto>
    implements _$$_AuthResponseDtoCopyWith<$Res> {
  __$$_AuthResponseDtoCopyWithImpl(
      _$_AuthResponseDto _value, $Res Function(_$_AuthResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? accessToken = null,
  }) {
    return _then(_$_AuthResponseDto(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDTO,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthResponseDto implements _AuthResponseDto {
  const _$_AuthResponseDto({required this.user, required this.accessToken});

  factory _$_AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthResponseDtoFromJson(json);

  @override
  final UserDTO user;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'AuthResponseDto(user: $user, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthResponseDto &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, accessToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthResponseDtoCopyWith<_$_AuthResponseDto> get copyWith =>
      __$$_AuthResponseDtoCopyWithImpl<_$_AuthResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthResponseDtoToJson(
      this,
    );
  }
}

abstract class _AuthResponseDto implements AuthResponseDto {
  const factory _AuthResponseDto(
      {required final UserDTO user,
      required final String accessToken}) = _$_AuthResponseDto;

  factory _AuthResponseDto.fromJson(Map<String, dynamic> json) =
      _$_AuthResponseDto.fromJson;

  @override
  UserDTO get user;
  @override
  String get accessToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthResponseDtoCopyWith<_$_AuthResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
