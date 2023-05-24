// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChangePasswordFormDto _$$_ChangePasswordFormDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ChangePasswordFormDto(
      name: json['name'] as String,
      oldPassword: json['oldPassword'] as String,
      newPassword: json['newPassword'] as String,
      confirmPassword: json['confirmPassword'] as String,
    );

Map<String, dynamic> _$$_ChangePasswordFormDtoToJson(
        _$_ChangePasswordFormDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
      'confirmPassword': instance.confirmPassword,
    };
