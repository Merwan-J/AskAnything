import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/answer/answer_failure.dart';
import 'package:askanything/domain/answer/answer_form.dart';
import 'package:dartz/dartz.dart';

abstract class IAnswerRepository {
  Future<Either<AnswerFailure, Answer>> createAnswer(
      AnswerForm answerForm, String userId);
  Future<Either<AnswerFailure, Answer>> updateAnswer(
      String id, String text); //TODO: change String to AnswerBody
  Future<Either<AnswerFailure, Answer>> getAnswerById(String id);
  Future<Either<AnswerFailure, List<Answer>>> getAnswers();
  Future<Either<AnswerFailure, Unit>> deleteAnswer(String id);
  Future<Either<AnswerFailure, Unit>> likeAnswer();
  Future<Either<AnswerFailure, Unit>> disLikeAnswer();
  Future<Either<AnswerFailure, List<Answer>>> getAnswersByQuestion(
      String questionId);
}
