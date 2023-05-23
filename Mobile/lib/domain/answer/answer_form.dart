import 'package:freezed_annotation/freezed_annotation.dart';
part 'answer_form.freezed.dart';

@freezed
class AnswerForm with _$AnswerForm {
  factory AnswerForm({
    required String text,
    required String image, //TODO: Change to image
    required bool anonymous,
    required String questionId,
  }) = _AnswerForm;
}
