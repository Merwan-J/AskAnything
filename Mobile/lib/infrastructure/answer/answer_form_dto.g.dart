// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerFormDto _$$_AnswerFormDtoFromJson(Map<String, dynamic> json) =>
    _$_AnswerFormDto(
      text: json['text'] as String,
      image: json['image'] as String,
      anonymous: json['anonymous'] as bool,
      author: json['author'] as String,
      question: json['question'] as String,
    );

Map<String, dynamic> _$$_AnswerFormDtoToJson(_$_AnswerFormDto instance) =>
    <String, dynamic>{
      'text': instance.text,
      'image': instance.image,
      'anonymous': instance.anonymous,
      'author': instance.author,
      'question': instance.question,
    };
