import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'question_like_events.dart';
import 'question_like_state.dart';

class QuestionLikeBloc extends Bloc<QuestionLikeEvent, QuestionLikeState> {
  final IQuestionRepository questionRepository;

  QuestionLikeBloc({required this.questionRepository})
      : super(const QuestionLikeStateInitial()) {
    on<QuestionEventLike>((event, emit) async {
      emit(const QuestionLikeStateLoading());
      Either<QuestionFailure, Question> question =
          await questionRepository.likeQuestion(event.questionId);

      question.fold(
        (l) => emit(QuestionLikeStateError(l)),
        (r) => emit(QuestionLikeStateSuccess(r)),
      );
    });

    on<QuestionEventDislike>((event, emit) async {
      emit(const QuestionLikeStateLoading());
      Either<QuestionFailure, Question> question =
          await questionRepository.dislikeQuestion(event.questionId);

      question.fold(
        (l) => emit(QuestionLikeStateError(l)),
        (r) => emit(QuestionLikeStateSuccess(r)),
      );
    });
  }
}
