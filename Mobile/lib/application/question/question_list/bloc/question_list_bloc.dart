import 'package:askanything/domain/question/question_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../domain/question/question.dart';
import '../../../../domain/question/question_form.dart';
import '../../../../domain/question/question_repository_interface.dart';

part 'question_list_event.dart';
part 'question_list_state.dart';

class QuestionListBloc extends Bloc<QuestionListEvent, QuestionListState> {
  //accept question repository
  final IQuestionRepository _questionRepository;

  QuestionListBloc(this._questionRepository) : super(QuestionListInitial()) {
    on<GetQuestionsEvent>((event, emit) async {
      emit(QuestionListLoading());
      final Either<QuestionFailure, List<Question>> questionsList =
          await _questionRepository.getQuestions();
      questionsList
          .fold((failure) => emit(QuestionListFailure(failure.toString())),
              (questions) {
        if (questions.isEmpty) {
          emit(QuestionListEmpty());
        } else {
          emit(QuestionListLoaded(questions));
        }
      });

      // TODO: implement event handler
    });
  }
}
