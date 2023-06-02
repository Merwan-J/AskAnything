// import 'package:askanything/Data/Local/local_database/local_storage.dart';
import 'dart:async';

import 'package:askanything/Data/Local/local_database/local_storage.dart';
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
import 'package:askanything/util/custom_timeout.dart';

import 'package:dartz/dartz.dart';

class QuestionRepository implements IQuestionRepository {
  final DatabaseHelper _databaseHelper = DatabaseHelper.instance;
  final QuestionProvider _questionProvider;

  QuestionRepository(this._questionProvider);

  @override
  Future<Either<QuestionFailure, List<Question>>> getQuestions() async {
    try {
      var questions = await _questionProvider.getQuestions();

      for (var question in questions) {
        try {
          await _databaseHelper.insertQuestion(question);
          print(question.toJsonForDb());
        } catch (e) {
          print(e);
          print(question.toJsonForDb());
        }
      }
      try {
        var questionsdb = await _databaseHelper.getQuestions();
        print(questionsdb);
      } catch (e) {
        print(e);
      }
      return right(questions.map((QuestionDto questionDto) {
        return Question.fromJson(questionDto.toJson());
      }).toList());
    } on CustomTimeoutException catch (timeout) {
      var questions = await _databaseHelper.getQuestions();
      print(questions);
      print("timeout: $timeout");
      if (questions.isEmpty) {
        return left(const QuestionFailure.serverError());
      }
      print("questions: $questions");
      return right(questions.map((QuestionDto questionDto) {
        return Question.fromJson(questionDto.toJson());
      }).toList());
    }
    // TODO: handle more errors
    // TODO: Make sure user is authenticated
    catch (e) {
      print(e);
      return left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> getQuestionById(
      String questionId) async {
    try {
      var question = await _questionProvider.getQuestion(questionId);
      try {
        await _databaseHelper.insertQuestion(question);
      } catch (e) {
        print(e);
      }
      return Right(Question.fromJson(question.toJson()));
    } on CustomTimeoutException catch (timeout) {
      var questions = await _databaseHelper.getQuestions();
      if (questions.isEmpty) {
        return left(const QuestionFailure.serverError());
      }
      print("questions: $questions");
      return Right(Question.fromJson(questions[0].toJson()));
    } catch (e) {
      return Left(const QuestionFailure.serverError());
    }
  }

  @override
  Future<Either<QuestionFailure, Question>> askQuestion(
      QuestionForm questionForm) async {
    try {
      var questionDto =
          await _questionProvider.createQuestion(questionForm.toDto());
      var question = Question.fromJson(questionDto.toJson());

      try {
        await _databaseHelper.insertQuestion(questionDto);
      } catch (e) {
        print(e);
      }

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

      try {
        await _databaseHelper.updateQuestion(questionDto);
      } catch (e) {
        print(e);
      }
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
      try {
        await _databaseHelper.deleteQuestion(questionId);
      } catch (e) {
        print(e);
      }
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
