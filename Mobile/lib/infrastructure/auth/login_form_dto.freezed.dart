// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogInFormDto _$LogInFormDtoFromJson(Map<String, dynamic> json) {
  return _LogInFormDto.fromJson(json);
}

/// @nodoc
mixin _$LogInFormDto {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInFormDtoCopyWith<LogInFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInFormDtoCopyWith<$Res> {
  factory $LogInFormDtoCopyWith(
          LogInFormDto value, $Res Function(LogInFormDto) then) =
      _$LogInFormDtoCopyWithImpl<$Res, LogInFormDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$LogInFormDtoCopyWithImpl<$Res, $Val extends LogInFormDto>
    implements $LogInFormDtoCopyWith<$Res> {
  _$LogInFormDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogInFormDtoCopyWith<$Res>
    implements $LogInFormDtoCopyWith<$Res> {
  factory _$$_LogInFormDtoCopyWith(
          _$_LogInFormDto value, $Res Function(_$_LogInFormDto) then) =
      __$$_LogInFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$_LogInFormDtoCopyWithImpl<$Res>
    extends _$LogInFormDtoCopyWithImpl<$Res, _$_LogInFormDto>
    implements _$$_LogInFormDtoCopyWith<$Res> {
  __$$_LogInFormDtoCopyWithImpl(
      _$_LogInFormDto _value, $Res Function(_$_LogInFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LogInFormDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LogInFormDto implements _LogInFormDto {
  _$_LogInFormDto(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'password') this.password});

  factory _$_LogInFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_LogInFormDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'LogInFormDto(name: $name, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogInFormDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogInFormDtoCopyWith<_$_LogInFormDto> get copyWith =>
      __$$_LogInFormDtoCopyWithImpl<_$_LogInFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogInFormDtoToJson(
      this,
    );
  }
}

abstract class _LogInFormDto implements LogInFormDto {
  factory _LogInFormDto(
      {@JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'password') final String? password}) = _$_LogInFormDto;

  factory _LogInFormDto.fromJson(Map<String, dynamic> json) =
      _$_LogInFormDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_LogInFormDtoCopyWith<_$_LogInFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
