import 'package:askanything/domain/answer/answer_form.dart';
import 'package:askanything/infrastructure/answer/answer_form_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/answer/answer_dto.dart';

part 'answer_event.freezed.dart';

@freezed
class AnswerEvent with _$AnswerEvent {
  const factory AnswerEvent.loadAnswer(String answerId) = LoadAnswerEvent;
  //by question id
  //by user id
  const factory AnswerEvent.addAnswer(AnswerForm answerForm) = AddAnswerEvent;
  const factory AnswerEvent.updateAnswer(String id, String text) =
      UpdateAnswerEvent;
  const factory AnswerEvent.deleteAnswer(String answerId) = DeleteAnswerEvent;
  const factory AnswerEvent.upvote(String answerId) = UpvoteAnswerEvent;
  const factory AnswerEvent.downvote(String answerId) = DownVoteAnswerEvent;
}
