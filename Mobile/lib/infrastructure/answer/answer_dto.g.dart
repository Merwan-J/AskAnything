// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerDto _$$_AnswerDtoFromJson(Map<String, dynamic> json) => _$_AnswerDto(
      ids: json['ids'] as String,
      texts: json['texts'] as String,
      images: json['images'] as String,
      likess:
          (json['likess'] as List<dynamic>).map((e) => e as String).toList(),
      dislikess:
          (json['dislikess'] as List<dynamic>).map((e) => e as String).toList(),
      authors: json['authors'] as String,
      questionId: json['questionId'] as String,
      anonymous: json['anonymous'] as bool,
      createdAts: DateTime.parse(json['createdAts'] as String),
      updatedAts: DateTime.parse(json['updatedAts'] as String),
    );

Map<String, dynamic> _$$_AnswerDtoToJson(_$_AnswerDto instance) =>
    <String, dynamic>{
      'ids': instance.ids,
      'texts': instance.texts,
      'images': instance.images,
      'likess': instance.likess,
      'dislikess': instance.dislikess,
      'authors': instance.authors,
      'questionId': instance.questionId,
      'anonymous': instance.anonymous,
      'createdAts': instance.createdAts.toIso8601String(),
      'updatedAts': instance.updatedAts.toIso8601String(),
    };
