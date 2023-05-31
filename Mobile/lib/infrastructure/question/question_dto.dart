import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question_dto.freezed.dart';
part 'question_dto.g.dart';

@freezed
class QuestionDto with _$QuestionDto {
  const factory QuestionDto({
    required String id,
    required String title,
    required String description,
    //TODO: Replace string with User model class
    required String author,
    required bool anonymous,
    // TODO: Replace string with Answer model class
    required List<dynamic> answers,
    required String topic,
    required List<dynamic> likes,
    required List<dynamic> dislikes,
    String? image,
    // TODO: Convert to DateTime
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _QuestionDto;

  factory QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$QuestionDtoFromJson(json);
}
