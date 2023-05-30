import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question_entity.freezed.dart';
part 'question_entity.g.dart';

@freezed
class QuestionEntity with _$QuestionEntity {
  const factory QuestionEntity({
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
  }) = _QuestionEntity;

  factory QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$QuestionEntityFromJson(json);
}
