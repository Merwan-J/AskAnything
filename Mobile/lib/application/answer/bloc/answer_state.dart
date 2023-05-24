import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/answer/answer.dart';
import '../../../domain/answer/answer_failure.dart';
import '../../../infrastructure/answer/answer_dto.dart';

part 'answer_state.freezed.dart';

@freezed
class AnswerState with _$AnswerState {
  const factory AnswerState.initial() = InitialAnswerState;
  const factory AnswerState.success() = SuccessAnswerEvent;
  const factory AnswerState.loading() = LoadingAnswerState;
  const factory AnswerState.loaded(Either<AnswerFailure, Answer> answer) =
      LoadedAnswerState;
  const factory AnswerState.error(String message) = ErrorAnswerState;
}
