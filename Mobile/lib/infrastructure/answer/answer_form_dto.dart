import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer_form_dto.freezed.dart';
part 'answer_form_dto.g.dart';

@freezed
class AnswerFormDto with _$AnswerFormDto {
  const factory AnswerFormDto({
    required String text,
    required String image, //TODO: Change to image
    required bool anonymous,
    required String author,
    required String question,
  }) = _AnswerFormDto;

  factory AnswerFormDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerFormDtoFromJson(json);
}
