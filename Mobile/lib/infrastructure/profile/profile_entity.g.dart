// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileEntity _$$_ProfileEntityFromJson(Map<String, dynamic> json) =>
    _$_ProfileEntity(
      name: json['name'] as String,
      profilePicture: json['profilePicture'] as String,
      reputation: json['reputation'] as int,
      following:
          (json['following'] as List<dynamic>).map((e) => e as String).toList(),
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      questions:
          (json['questions'] as List<dynamic>).map((e) => e as String).toList(),
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ProfileEntityToJson(_$_ProfileEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profilePicture': instance.profilePicture,
      'reputation': instance.reputation,
      'following': instance.following,
      'followers': instance.followers,
      'questions': instance.questions,
      'answers': instance.answers,
    };
