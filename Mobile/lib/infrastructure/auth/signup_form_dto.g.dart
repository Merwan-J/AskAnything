// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpFormDto _$$_SignUpFormDtoFromJson(Map<String, dynamic> json) =>
    _$_SignUpFormDto(
      name: json['name'] as String,
      emailAddress: json['emailAddress'] as String,
      password: json['password'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$$_SignUpFormDtoToJson(_$_SignUpFormDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
    };
