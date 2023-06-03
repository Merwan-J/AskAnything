import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_like_events.freezed.dart';

@freezed
class QuestionLikeEvent with _$QuestionLikeEvent {
  const factory QuestionLikeEvent.inital() = QuestionLikeEventInitial;

  const factory QuestionLikeEvent.like(String questionId, String userId) =
      QuestionEventLike;
  const factory QuestionLikeEvent.dislike(String questionId, String userId) =
      QuestionEventDislike;
}
