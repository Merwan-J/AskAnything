import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_like_state.freezed.dart';

@freezed
class QuestionLikeState with _$QuestionLikeState {
  const factory QuestionLikeState.initial() = QuestionLikeStateInitial;
  const factory QuestionLikeState.error(QuestionFailure questionFailure) =
      QuestionLikeStateError;
  const factory QuestionLikeState.loading() = QuestionLikeStateLoading;
  const factory QuestionLikeState.likesuccess(Question question) =
      QuestionLikeStateSuccess;
  const factory QuestionLikeState.dislikesuccess(Question question) =
      QuestionDisLikeStateSuccess;
}
