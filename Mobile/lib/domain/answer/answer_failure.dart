import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_failure.freezed.dart';

@freezed
abstract class AnswerFailure<T> with _$AnswerFailure<T> {
  const factory AnswerFailure.emptyError({required String failedValue}) =
      EmptyError<T>;
  const factory AnswerFailure.exceedingLengthError(
      {required String failedValue}) = ExceedingLengthError<T>;
  const factory AnswerFailure.serverError({required String failedValue}) =
      _ServerError;
  const factory AnswerFailure.notFoundError({required String failedValue}) =
      _NotFoundError;
}
