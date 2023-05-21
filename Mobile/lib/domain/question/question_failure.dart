import 'package:askanything/domain/question/question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_failure.freezed.dart';

@freezed
class QuestionFailure with _$QuestionFailure {
  const factory QuestionFailure.serverError() = ServerError;
  const factory QuestionFailure.networkError() = NetworkError;
  const factory QuestionFailure.unauthorized() = Unauthorized;
  const factory QuestionFailure.notFound() = NotFound;
  const factory QuestionFailure.permissionDenied() = PermissionDenied;
  const factory QuestionFailure.forbidden() = Forbidden;
  const factory QuestionFailure.EmptyTitleError() = EmptyTitleError;
  const factory QuestionFailure.EmptyDescriptionError() = EmptyDescriptionError;
  const factory QuestionFailure.EmptyTopicError() = EmptyTopicError;
}
