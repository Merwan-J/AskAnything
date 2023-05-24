import 'package:askanything/domain/question/question_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_edit_events.freezed.dart';

@freezed
abstract class QuestionEditEvent with _$QuestionEditEvent {
  const factory QuestionEditEvent.edit(
      {required QuestionForm questionForm,
      required String questionId}) = EditQuestionEvent;
}
