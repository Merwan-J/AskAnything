// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserFormDTO _$$_UserFormDTOFromJson(Map<String, dynamic> json) =>
    _$_UserFormDTO(
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      profilePic: json['profilePic'] as String?,
    );

Map<String, dynamic> _$$_UserFormDTOToJson(_$_UserFormDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'profilePic': instance.profilePic,
    };
