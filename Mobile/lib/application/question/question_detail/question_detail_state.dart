import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_detail_state.freezed.dart';

@freezed
class QuestionDetailState with _$QuestionDetailState {
  const factory QuestionDetailState.initial() = QuestionDetailStateInitial;

  // Initial loading state.
  const factory QuestionDetailState.loading() = QuestionDetailStateLoading;

  // TODO: Add loadedQuestion after AUTH IS COMPLETE
  // const factory QuestionDetailState.loadedQuestion(
  //     Question question, String userId) = QuestionDetailStateLoadedQuestion;

  const factory QuestionDetailState.error(QuestionFailure questionFailure) =
      QuestionDetailStateError;

  // Delete
  const factory QuestionDetailState.deleteSuccess() =
      QuestionDetailStateDeleteSuccess;
}
