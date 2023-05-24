import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'question_detail_events.dart';
import 'question_detail_state.dart';

class QuestionDetailBloc
    extends Bloc<QuestionDetailEvent, QuestionDetailState> {
  final IQuestionRepository questionRepository;

  // TODO: Inject auth repository
  // final IAuthRepository authRepository;

  QuestionDetailBloc({required this.questionRepository})
      : super(const QuestionDetailStateInitial()) {
    // Load the question
    on<QuestionDetailLoadEvent>(
      ((event, emit) async {
        emit(const QuestionDetailStateLoading());
        add(QuestionDetailReloadEvent(event.questionId));
      }),
    );

    // TODO: Reload the question
    // on<QuestionDetailReloadEvent>(
    //   ((event, emit) async {
    //     Either<QuestionFailure, Question> question =
    //         await questionRepository.getQuestionById(event.questionId);

    //     question.fold(
    //       (failure) => emit(QuestionDetailStateError(failure)),
    //       (question) async {
    //         final user = await authRepository.getAuthenticatedUser();
    //         emit(QuestionDetailStateLoadedQuestion(question, user!.id));
    //       },
    //     );
    //   }),
    // );

    on<QuestionDetailDeleteEvent>(((event, emit) async {
      emit(const QuestionDetailStateLoading());
      Either<QuestionFailure, Unit> question =
          await questionRepository.deleteQuestion(event.questionId);

      question.fold(
        (failure) => emit(QuestionDetailStateError(failure)),
        (_) => emit(const QuestionDetailStateDeleteSuccess()),
      );
    }));
  }
}
