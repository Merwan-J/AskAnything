import 'package:askanything/application/question/question_list/bloc/question_list_bloc.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'question_like_events.dart';
import 'question_like_state.dart';

class QuestionLikeBloc extends Bloc<QuestionLikeEvent, QuestionLikeState> {
  final IQuestionRepository questionRepository;
  final QuestionListBloc questionListBloc;

  QuestionLikeBloc(
      {required this.questionRepository, required this.questionListBloc})
      : super(const QuestionLikeStateInitial()) {
    on<QuestionEventLike>((event, emit) async {
      emit(const QuestionLikeStateLoading());
      Either<QuestionFailure, Question> question =
          await questionRepository.likeQuestion(event.questionId, event.userId);

      print(question);

      question.fold((l) => emit(QuestionLikeStateError(l)), (r) {
        emit(QuestionLikeStateSuccess(r));
        questionListBloc.add(GetQuestionsEvent(isRefresh: true));
      });
    });

    on<QuestionEventDislike>((event, emit) async {
      emit(const QuestionLikeStateLoading());
      print("about to dislike");
      Either<QuestionFailure, Question> question = await questionRepository
          .dislikeQuestion(event.questionId, event.userId);
      print("here");
      print(question);

      question.fold((l) => emit(QuestionLikeStateError(l)), (r) {
        emit(QuestionLikeStateSuccess(r));
        questionListBloc.add(GetQuestionsEvent(isRefresh: true));
      });
    });
  }
}
