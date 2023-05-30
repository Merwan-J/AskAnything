part of 'question_post_bloc.dart';

@immutable
abstract class QuestionPostState {}

class QuestionPostInitial extends QuestionPostState {}

class QuestionPostLoading extends QuestionPostState {}

class QuestionPosting extends QuestionPostState {}

//question post success state
class QuestionPostSuccess extends QuestionPostState {
  final String message;

  QuestionPostSuccess(this.message);
}

//question post failure state

class QuestionPostFailure extends QuestionPostState {
  final String message;

  QuestionPostFailure(this.message);
}
