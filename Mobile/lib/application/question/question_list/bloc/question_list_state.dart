part of 'question_list_bloc.dart';

@immutable
abstract class QuestionListState {}

class QuestionListInitial extends QuestionListState {}

class QuestionListLoading extends QuestionListState {}

class QuestionListLoaded extends QuestionListState {
  final List<Question> questions;

  QuestionListLoaded(this.questions);
}

class QuestionListFailure extends QuestionListState {
  final String message;

  QuestionListFailure(this.message);
}

class QuestionListEmpty extends QuestionListState {}
