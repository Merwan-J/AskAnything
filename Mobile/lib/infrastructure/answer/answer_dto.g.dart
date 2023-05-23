// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerDto _$$_AnswerDtoFromJson(Map<String, dynamic> json) => _$_AnswerDto(
      id: json['id'] as String,
      text: json['text'] as String,
      image: json['image'] as String,
      likes: (json['likes'] as List<dynamic>).map((e) => e as String).toList(),
      dislikes:
          (json['dislikes'] as List<dynamic>).map((e) => e as String).toList(),
      author: json['author'] as String,
      questionId: json['questionId'] as String,
      anonymous: json['anonymous'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_AnswerDtoToJson(_$_AnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image': instance.image,
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'author': instance.author,
      'questionId': instance.questionId,
      'anonymous': instance.anonymous,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
