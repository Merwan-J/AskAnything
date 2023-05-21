import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/answer/answer_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAnswerRepository {
  Future<Either<AnswerFailure, Answer>> createAnswer();
  Future<Either<AnswerFailure, Answer>> updateAnswer();
  Future<Either<AnswerFailure, Answer>> getAnswerById();
  Future<Either<AnswerFailure, Answer>> getAnswers();
  Future<Either<AnswerFailure, Unit>> deleteAnswer();
  Future<Either<AnswerFailure, Unit>> likeAnswer();
  Future<Either<AnswerFailure, Unit>> disLikeAnswer();
}
