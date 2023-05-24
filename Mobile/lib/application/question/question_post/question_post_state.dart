import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_post_state.freezed.dart';

@freezed
abstract class QuestionPostState with _$QuestionPostState {
  const factory QuestionPostState.empty() = QuestionPostEmptyState;
  const factory QuestionPostState.loading() = QuestionPostLoadingState;
  const factory QuestionPostState.success({required Question question}) =
      QuestionPostSuccessState;
  const factory QuestionPostState.failure(
      {required QuestionFailure questionFailure}) = QuestionPostFailureState;
}
