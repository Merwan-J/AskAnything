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
      print("repository");
      print("questions");
      return right(questions.map((QuestionDto questionDto) {
        return Question.fromJson(questionDto.toJson());
      }).toList());
    } catch (e) {
      print("this is error: $e");
      return left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> getQuestionById(
      String questionId) async {
    try {
      var question = await _questionProvider.getQuestion(questionId);
      return Right(Question.fromJson(question.toJson()));
    } catch (e) {
      return Left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> askQuestion(
      QuestionForm questionForm, String id) async {
    try {
      var questionDto =
          await _questionProvider.createQuestion(questionForm.toDto(), id);
      var question = Question.fromJson(questionDto.toJson());

      return Right(question);
    } catch (e) {
      print(e);
      return Left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> updateQuestion(
      QuestionForm question, String questionId) async {
    print(question);
    try {
      var questionDto =
          await _questionProvider.updateQuestion(question.toDto(), questionId);
      print("after update repo");
      return right(Question.fromJson(questionDto.toJson()));
    } catch (e) {
      print("line 75${e}.");
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
      print("dislike question");
      QuestionDto questionDto =
          await _questionProvider.downvoteQuestion(questionId);
      print("after dislike question$questionDto");
      return right(Question.fromJson(questionDto.toJson()));
    } catch (e) {
      print(e);
      print("never here");
      return left(QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> likeQuestion(
      String questionId) async {
    try {
      print("like question repo");
      QuestionDto questionDto =
          await _questionProvider.upvoteQuestion(questionId);
      print("after like question$questionDto");
      return right(Question.fromJson(questionDto.toJson()));
    } catch (e) {
      return left(QuestionFailure.serverError());
    }
  }
}
