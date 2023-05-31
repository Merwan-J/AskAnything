// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionEntity _$$_QuestionEntityFromJson(Map<String, dynamic> json) =>
    _$_QuestionEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      anonymous: json['anonymous'] as bool,
      answers: json['answers'] as List<dynamic>,
      topic: json['topic'] as String,
      likes: json['likes'] as List<dynamic>,
      dislikes: json['dislikes'] as List<dynamic>,
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_QuestionEntityToJson(_$_QuestionEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'anonymous': instance.anonymous,
      'answers': instance.answers,
      'topic': instance.topic,
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'image': instance.image,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
