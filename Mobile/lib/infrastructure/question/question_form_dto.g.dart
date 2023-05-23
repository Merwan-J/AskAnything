// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionFormDto _$$_QuestionFormDtoFromJson(Map<String, dynamic> json) =>
    _$_QuestionFormDto(
      title: json['title'] as String,
      description: json['description'] as String,
      anonymous: json['anonymous'] as bool,
      topic: json['topic'] as String,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_QuestionFormDtoToJson(_$_QuestionFormDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'anonymous': instance.anonymous,
      'topic': instance.topic,
      'image': instance.image,
    };
