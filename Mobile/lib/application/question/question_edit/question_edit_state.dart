import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_edit_state.freezed.dart';

@freezed
abstract class QuestionEditState with _$QuestionEditState {
  const factory QuestionEditState.initial() = QuestionEditInitialState;
  const factory QuestionEditState.loading() = QuestionEditLoadingState;
  const factory QuestionEditState.success({required Question question}) =
      QuestionEditSuccessState;
  const factory QuestionEditState.failure(
      {required QuestionFailure questionFailure}) = QuestionEditFailureState;
}
