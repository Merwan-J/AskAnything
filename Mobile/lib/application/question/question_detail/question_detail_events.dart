import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_detail_events.freezed.dart';

@freezed
abstract class QuestionDetailEvent with _$QuestionDetailEvent {
  const factory QuestionDetailEvent.load(String questionId) =
      QuestionDetailLoadEvent;

  const factory QuestionDetailEvent.reload(String questionId) =
      QuestionDetailReloadEvent;

  const factory QuestionDetailEvent.delete(String questionId) =
      QuestionDetailDeleteEvent;
}
