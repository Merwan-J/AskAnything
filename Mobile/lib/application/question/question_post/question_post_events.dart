import 'package:askanything/domain/question/question_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_post_events.freezed.dart';

@freezed
abstract class QuestionPostEvent with _$QuestionPostEvent {
  const factory QuestionPostEvent.update(
      {required QuestionForm questionForm,
      required String questionId}) = QuestionPostUpdateEvent;
  const factory QuestionPostEvent.submit({required QuestionForm questionForm}) =
      QuestionPostSubmitEvent;
}
