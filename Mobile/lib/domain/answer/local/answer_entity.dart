import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer_entity.freezed.dart';
part 'answer_entity.g.dart';

@freezed
class AnswerEntity with _$AnswerEntity {
  factory AnswerEntity({
    required String id,
    required String text,
    required String image,
    required bool anonymous,
    required String question,
    required List<String> likes,
    required List<String> dislikes,
    required String author,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AnswerEntity;

  factory AnswerEntity.fromJson(Map<String, dynamic> json) =>
      _$AnswerEntityFromJson(json);
}
