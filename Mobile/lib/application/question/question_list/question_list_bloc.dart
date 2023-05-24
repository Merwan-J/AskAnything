import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'question_list_events.dart';
import 'question_list_state.dart';

class QuestionsListBloc extends Bloc<QuestionsListEvent, QuestionsListState> {
  final IQuestionRepository questionRepository;

  QuestionsListBloc({required this.questionRepository})
      : super(const QuestionsListStateInitial()) {
    on<QuestionsListEventLoad>((event, emit) async {
      emit(const QuestionsListStateLoading());
      add(const QuestionsListEventRefresh());
    });

    on<QuestionsListEventRefresh>((event, emit) async {
      Either<QuestionFailure, List<Question>> questions =
          await questionRepository.getQuestions();

      questions.fold(
        (l) => emit(QuestionsListStateError(l)),
        (r) => emit(QuestionsListStateSuccess(r)),
      );
    });
  }
}
