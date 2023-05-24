// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpFormDto _$$_SignUpFormDtoFromJson(Map<String, dynamic> json) =>
    _$_SignUpFormDto(
      name: _nameFromJson(json['name'] as Map<String, dynamic>),
      emailAddress:
          _emailFromJson(json['emailAddress'] as Map<String, dynamic>),
      password: _passwordFromJson(json['password'] as Map<String, dynamic>),
      confirmPassword:
          _passwordFromJson(json['confirmPassword'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignUpFormDtoToJson(_$_SignUpFormDto instance) =>
    <String, dynamic>{
      'name': _nameToJson(instance.name),
      'emailAddress': _emailToJson(instance.emailAddress),
      'password': _passwordToJson(instance.password),
      'confirmPassword': _passwordToJson(instance.confirmPassword),
    };
