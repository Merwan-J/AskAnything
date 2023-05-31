part of 'question_list_bloc.dart';

@immutable
abstract class QuestionListEvent {}

//get questions event
class GetQuestionsEvent extends QuestionListEvent {}

//get questions by topic event
class GetQuestionsByTopicEvent extends QuestionListEvent {
  final String userId;
  final String topic;

  GetQuestionsByTopicEvent(this.userId, this.topic);
}

//get questions by user event
class GetQuestionsByUserEvent extends QuestionListEvent {
  final String userId;
  final String user;

  GetQuestionsByUserEvent(this.userId, this.user);
}

//delete question event
class DeleteQuestion extends QuestionListEvent {
  final String userId;
  final String questionId;

  DeleteQuestion(this.userId, this.questionId);
}

//update question event
class UpdateQuestionEvent extends QuestionListEvent {
  final QuestionForm questionForm;
  final String userId;
  final String questionId;

  UpdateQuestionEvent(this.questionForm, this.userId, this.questionId);
}
//get question event

