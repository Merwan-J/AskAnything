import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_form.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';
import 'package:askanything/infrastructure/question/question_form_dto.dart';
import 'package:askanything/infrastructure/question/question_provider.dart';
import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/infrastructure/question/question_mapper.dart';
import 'package:askanything/infrastructure/question/question_form_mapper.dart';
import 'package:askanything/util/custom_http_client.dart';

import 'package:dartz/dartz.dart';

class QuestionRepository implements IQuestionRepository {
  final QuestionProvider _questionProvider;

  QuestionRepository(this._questionProvider);

  @override
  Future<Either<QuestionFailure, List<Question>>> getQuestions() async {
    try {
      var questions = await _questionProvider.getQuestions();
      return right(questions
          .map((QuestionDto questionDto) =>
              Question.fromJson(questionDto.toJson()))
          .toList());
    }
    // TODO: handle more errors
    // TODO: Make sure user is authenticated
    catch (e) {
      return left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> getQuestionById(
      String questionId) async {
    try {
      var question = await _questionProvider.getQuestion(questionId);
      return right(Question.fromJson(question.toJson()));
    } catch (e) {
      return left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> askQuestion(
      QuestionForm questionForm) async {
    try {
      print("yess");
      var questionDto =
          await _questionProvider.createQuestion(questionForm.toDto());
      print("again yess");
      var question = Question.fromJson(questionDto.toJson());
      print("!21question: $question");
      return right(question);
    } catch (e) {
      print(e);
      return left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> updateQuestion(
      QuestionForm question, String questionId) async {
    try {
      var questionDto =
          await _questionProvider.updateQuestion(question.toDto(), questionId);
      return right(Question.fromJson(questionDto.toJson()));
    } catch (e) {
      return left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Unit>> deleteQuestion(
      String questionId) async {
    try {
      await _questionProvider.deleteQuestion(questionId);
      return right(unit);
    } catch (e) {
      return left(QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> dislikeQuestion(
      String questionId) async {
    try {
      QuestionDto questionDto =
          await _questionProvider.upvoteQuestion(questionId);
      return right(Question.fromJson(questionDto.toJson()));
    } catch (e) {
      return left(QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> likeQuestion(
      String questionId) async {
    try {
      QuestionDto questionDto =
          await _questionProvider.upvoteQuestion(questionId);
      return right(Question.fromJson(questionDto.toJson()));
    } catch (e) {
      return left(QuestionFailure.serverError());
    }
  }
}
