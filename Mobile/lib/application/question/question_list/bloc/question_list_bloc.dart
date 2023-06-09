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
      print("get questions event");
      if (!event.isRefresh) {
        emit(QuestionListLoading());
      }
      final Either<QuestionFailure, List<Question>> questionsList =
          await _questionRepository.getQuestions();
      questionsList
          .fold((failure) => emit(QuestionListFailure(failure.toString())),
              (questions) {
        if (questions.isEmpty) {
          emit(QuestionListEmpty());
        } else {
          print(questions.length);
          print("blocssss --");
          emit(QuestionListLoaded(questions));
        }
      });

      // TODO: implement event handler
    });

    on<GetPendingQuestions>((event, emit) async {
      print('get pending questions event-----------------------------------');
      emit(QuestionListLoading());
      print('after loading event-----------------------------------');

      final Either<QuestionFailure, List<Question>> questionsList =
          await _questionRepository.getPendingQuestions();
      print(' after getting the whole data-----------------------------------');

      questionsList.fold(
          (failure) =>
              emit(QuestionListFailure("Unable to load pending questions")),
          (questions) => emit(QuestionListLoaded(questions)));
    });
    on<ApproveQuestion>((event, emit) async {
      print("heyllo from bloc");
      final Either<QuestionFailure, Question> questionsList =
          await _questionRepository.approveQuestion(event.questionId);

      questionsList.fold((failure) => QuestionListFailure,
          (questions) => add(GetPendingQuestions()));
    });
    on<RejectQuestion>((event, emit) async {
      print("heyllo from bloc");
      final Either<QuestionFailure, Question> questionsList =
          await _questionRepository.rejectQuestion(event.questionId);

      questionsList.fold((failure) => QuestionListFailure,
          (questions) => add(GetPendingQuestions()));
    });
  }
}
