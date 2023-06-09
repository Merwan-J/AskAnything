import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_form.freezed.dart';

@freezed
class QuestionForm with _$QuestionForm {
  const factory QuestionForm({
    required String title,
    required String description,
    required bool anonymous,
    required String topic,
    String? image,
  }) = _QuestionForm;
}
