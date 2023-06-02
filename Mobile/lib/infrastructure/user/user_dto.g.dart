// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      id: json['_id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      profilePic: json['profilePic'] as String? ?? '',
      questionIds:
          (json['questions'] as List<dynamic>).map((e) => e as String).toList(),
      answerIds:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      reputation: json['reputation'] as int,
      likes: json['likes'] as int,
      dislikes: json['dislikes'] as int,
      bookmarks:
          (json['bookmarks'] as List<dynamic>).map((e) => e as String).toList(),
      followers:
          (json['followers'] as List<dynamic>).map((e) => e as String).toList(),
      followings: (json['followings'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'profilePic': instance.profilePic,
      'questions': instance.questionIds,
      'answers': instance.answerIds,
      'reputation': instance.reputation,
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'bookmarks': instance.bookmarks,
      'followers': instance.followers,
      'followings': instance.followings,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
