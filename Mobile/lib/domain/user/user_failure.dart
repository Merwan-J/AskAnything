import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.unexpectedError() = _UnexpectedError;
  const factory UserFailure.notFoundError() = _NotFoundError;
  const factory UserFailure.serverError() = _ServerError;
}
