import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_like_events.freezed.dart';

@freezed
class QuestionLikeEvent with _$QuestionLikeEvent {
  const factory QuestionLikeEvent.inital() = QuestionLikeEventInitial;

  const factory QuestionLikeEvent.like(String questionId) = QuestionEventLike;
  const factory QuestionLikeEvent.dislike(String questionId) =
      QuestionEventDislike;
}
