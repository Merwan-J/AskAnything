import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_list_state.freezed.dart';

@freezed
class QuestionsListState with _$QuestionsListState {
  const factory QuestionsListState.initial() = QuestionsListStateInitial;
  const factory QuestionsListState.error(QuestionFailure questionFailure) =
      QuestionsListStateError;
  const factory QuestionsListState.loading() = QuestionsListStateLoading;
  const factory QuestionsListState.success(List<Question> questions) =
      QuestionsListStateSuccess;
}
