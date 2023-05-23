import 'package:askanything/domain/answer/answer_failure.dart';
import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/answer/answer_repository_interface.dart';
import 'package:askanything/infrastructure/answer/answer_api.dart';
import 'package:askanything/infrastructure/answer/answer_dto.dart';
import 'package:dartz/dartz.dart';

class AnswerRepository implements IAnswerRepository {
  // AnswerAPI _answerAPI;

  @override
  Future<Either<AnswerFailure, Answer>> createAnswer() {
    // TODO: implement createAnswer
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Unit>> deleteAnswer() {
    // TODO: implement deleteAnswer
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Unit>> disLikeAnswer() {
    // TODO: implement disLikeAnswer
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Answer>> getAnswerById() {
    // TODO: implement getAnswerById
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Answer>> getAnswers() {
    // TODO: implement getAnswers
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Unit>> likeAnswer() {
    // TODO: implement likeAnswer
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Answer>> updateAnswer() {
    // TODO: implement updateAnswer
    throw UnimplementedError();
  }
}
