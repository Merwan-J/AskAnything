import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../question_list/bloc/question_list_bloc.dart';
import 'question_detail_events.dart';
import 'question_detail_state.dart';

class QuestionDetailBloc
    extends Bloc<QuestionDetailEvent, QuestionDetailState> {
  final IQuestionRepository questionRepository;
  final QuestionListBloc questionListBloc;

  // TODO: Inject auth repository
  // final IAuthRepository authRepository;

  QuestionDetailBloc(
      {required this.questionRepository, required this.questionListBloc})
      : super(const QuestionDetailStateInitial()) {
    // Load the question
    on<QuestionDetailLoadEvent>(
      ((event, emit) async {
        emit(const QuestionDetailStateLoading());
        add(QuestionDetailReloadEvent(event.questionId));
      }),
    );

    on<QuestionDetailDeleteEvent>(((event, emit) async {
      emit(const QuestionDetailStateLoading());
      print("about to delete");
      Either<QuestionFailure, Unit> question =
          await questionRepository.deleteQuestion(event.questionId);
      print("unit test...");
      print(question);

      question.fold(
        (failure) => emit(QuestionDetailStateError(failure)),
        (_) {
          questionListBloc.add(GetQuestionsEvent(isRefresh: true));
          emit(QuestionDetailStateDeleteSuccess());
        },
      );
    }));
  }
}
