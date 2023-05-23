// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerEntity _$$_AnswerEntityFromJson(Map<String, dynamic> json) =>
    _$_AnswerEntity(
      id: json['id'] as String,
      text: json['text'] as String,
      image: json['image'] as String,
      anonymous: json['anonymous'] as bool,
      question: json['question'] as String,
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      dislikes:
          (json['dislikes'] as List<dynamic>).map((e) => e as String).toList(),
      author: json['author'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_AnswerEntityToJson(_$_AnswerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image': instance.image,
      'anonymous': instance.anonymous,
      'question': instance.question,
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'author': instance.author,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
