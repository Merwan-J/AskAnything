import 'package:askanything/domain/answer/answer_failure.dart';
import 'package:dartz/dartz.dart';

class AnswerBody {
  final Either<AnswerFailure<String>, String> text;

  factory AnswerBody(String text) {
    assert(text != null);
    return AnswerBody._(validateText(text));
  }
  const AnswerBody._(this.text);
}

// TODO: add more validation
// TODO: move to other file
Either<AnswerFailure<String>, String> validateText(String text) {
  if (text.length < 10 || text.length > 100) {
    return left(AnswerFailure.emptyError(failedValue: text));
  } else {
    return right(text);
  }
}
