import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';

import 'package:dartz/dartz.dart';

import 'question_post_events.dart';
import 'question_post_state.dart';

class QuestionPostBloc extends Bloc<QuestionPostEvent, QuestionPostState> {
  final IQuestionRepository _questionRepository;

  QuestionPostBloc(this._questionRepository)
      : super(const QuestionPostState.empty()) {
    on<QuestionPostSubmitEvent>((event, emit) async {
      emit(const QuestionPostState.loading());
      Either<QuestionFailure, Question> result =
          await _questionRepository.askQuestion(event.questionForm.copyWith());

      result.fold((l) => emit(QuestionPostState.failure(questionFailure: l)),
          (r) => emit(QuestionPostState.success(question: r)));
    });
    on<QuestionPostUpdateEvent>((event, emit) async {
      emit(const QuestionPostState.loading());
      Either<QuestionFailure, Question> result = await _questionRepository
          .updateQuestion(event.questionForm.copyWith(), event.questionId);

      result.fold((l) => emit(QuestionPostState.failure(questionFailure: l)),
          (r) => emit(QuestionPostState.success(question: r)));
    });
  }
}
