part of 'question_post_bloc.dart';

@immutable
abstract class QuestionPostEvent {}

class QuestionPostingEvent extends QuestionPostEvent {}

class QuestionPostAdd extends QuestionPostEvent {
  final QuestionForm questionForm;

  QuestionPostAdd(this.questionForm);
}

class PostQuestionWithImage extends QuestionPostEvent {
  final QuestionForm questionForm;
  final String userId;
  final Uint8List? image;

  PostQuestionWithImage(this.questionForm, this.userId, this.image);
}

//update question event
class UpdateQuestion extends QuestionPostEvent {
  final QuestionForm questionForm;
  final String userId;
  final String questionId;

  UpdateQuestion(this.questionForm, this.userId, this.questionId);
}
