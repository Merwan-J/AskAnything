import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question_form_dto.freezed.dart';
part 'question_form_dto.g.dart';

@freezed
class QuestionFormDto with _$QuestionFormDto {
  const factory QuestionFormDto({
    required String title,
    required String description,
    required bool anonymous,
    required String topic,
    String? image,
  }) = _QuestionFormDto;

  factory QuestionFormDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionFormDtoFromJson(json);
}
