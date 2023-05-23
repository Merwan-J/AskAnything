// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      anonymous: json['anonymous'] as bool,
      answers:
          (json['answers'] as List<dynamic>).map((e) => e as String).toList(),
      topic: json['topic'] as String,
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      dislikes:
          (json['dislikes'] as List<dynamic>).map((e) => e as String).toList(),
      image: json['image'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
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
