import 'package:askanything/domain/question/question_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class QuestionEditEvent {
  final QuestionForm questionForm;
  final String questionId;

  const QuestionEditEvent.edit({
    required this.questionForm,
    required this.questionId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionEditEvent &&
          runtimeType == other.runtimeType &&
          questionForm == other.questionForm &&
          questionId == other.questionId;

  @override
  int get hashCode => questionForm.hashCode ^ questionId.hashCode;

  @override
  String toString() =>
      'QuestionEditEvent.edit(questionForm: $questionForm, questionId: $questionId)';
}
