import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'answer_dto.freezed.dart';
part 'answer_dto.g.dart';

@freezed
class AnswerDto with _$AnswerDto {
  const factory AnswerDto({
    required String id,
    required String text,
    required String image,
    required List<dynamic> likes, // TODO: Change to user ids
    required List<dynamic> dislikes, // TODO: List of user ids
    required String author, // TODO: User id
    required String questionId, // TODO: Question id
    required bool anonymous,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AnswerDto;

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);
}
