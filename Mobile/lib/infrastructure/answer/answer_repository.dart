import 'package:askanything/domain/answer/answer_failure.dart';
import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/answer/answer_form.dart';
import 'package:askanything/domain/answer/answer_repository_interface.dart';
import 'package:askanything/infrastructure/answer/answer_api.dart';
import 'package:askanything/infrastructure/answer/answer_form_mapper.dart';
import 'package:dartz/dartz.dart';

import 'answer_mapper.dart';

class AnswerRepository implements IAnswerRepository {
  AnswerAPI _answerAPI;

  AnswerRepository(this._answerAPI);

  @override
  Future<Either<AnswerFailure, Answer>> createAnswer(
      AnswerForm answerForm) async {
    try {
      var answer = await _answerAPI.createAnswer(answerForm.toAnswerFormDto());

      return right(answer.toAnswer());
    } catch (e) {
      return left(const AnswerFailure.serverError(failedValue: 'Server Error'));
    } //TODO: Add more specific errors
  }

  @override
  Future<Either<AnswerFailure, Unit>> deleteAnswer(String id) async {
    try {
      await _answerAPI.deleteAnswer(id);
      return right(unit);
    } catch (e) {
      return left(const AnswerFailure.serverError(failedValue: 'Server Error'));
    }
  }

  @override
  Future<Either<AnswerFailure, Unit>> disLikeAnswer() {
    // TODO: implement disLikeAnswer
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Answer>> getAnswerById(String id) async {
    try {
      var answer = await _answerAPI.getAnswerById(id);
      return right(answer.toAnswer());
    } catch (e) {
      return left(const AnswerFailure.serverError(failedValue: 'Server Error'));
    }
  }

  @override
  Future<Either<AnswerFailure, List<Answer>>> getAnswers() async {
    // TODO: implement getAnswers
    try {
      var answers = await _answerAPI.getAnswers();
      return right(answers.map((e) => e.toAnswer()).toList());
    } catch (e) {
      return left(const AnswerFailure.serverError(failedValue: 'Server Error'));
    }
  }

  @override
  Future<Either<AnswerFailure, Unit>> likeAnswer() {
    // TODO: implement likeAnswer
    throw UnimplementedError();
  }

  @override
  Future<Either<AnswerFailure, Answer>> updateAnswer(
      String id, String text) async {
    try {
      var answer = await _answerAPI.updateAnswer(id: id, text: text);
      return right(answer.toAnswer());
    } catch (e) {
      return left(const AnswerFailure.serverError(failedValue: 'Server Error'));
    }
  }
}
