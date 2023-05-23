import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'answer_dto.freezed.dart';
part 'answer_dto.g.dart';

@freezed
class AnswerDto with _$AnswerDto {
  const factory AnswerDto({
    required String ids,
    required String texts,
    required String images,
    required List<String> likess, // TODO: Change to user ids
    required List<String> dislikess, // TODO: List of user ids
    required String authors, // TODO: User id
    required String questionId, // TODO: Question id
    required bool anonymous,
    required DateTime createdAts,
    required DateTime updatedAts,
  }) = _AnswerDto;

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);
}
