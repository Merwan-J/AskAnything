import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';

import 'package:dartz/dartz.dart';

import 'question_edit_events.dart';
import 'question_edit_state.dart';

class QuestionEditBloc extends Bloc<QuestionEditEvent, QuestionEditState> {
  final IQuestionRepository _questionRepository;

  QuestionEditBloc(this._questionRepository)
      : super(const QuestionEditState.initial()) {
    on<EditQuestionEvent>((event, emit) async {
      emit(const QuestionEditState.loading());
      Either<QuestionFailure, Question> result = await _questionRepository
          .updateQuestion(event.questionForm.copyWith(), event.questionId);

      result.fold((l) => emit(QuestionEditState.failure(questionFailure: l)),
          (r) => emit(QuestionEditState.success(question: r)));
    });
  }
}
