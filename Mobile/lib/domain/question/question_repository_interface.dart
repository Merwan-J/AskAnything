import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:askanything/domain/question/question_form.dart';
import 'package:dartz/dartz.dart';

abstract class IQuestionRepository {
  Future<Either<QuestionFailure, List<Question>>> getQuestions();
  Future<Either<QuestionFailure, Question>> getQuestionById(String questionId);
  Future<Either<QuestionFailure, Question>> askQuestion(QuestionForm question);
  Future<Either<QuestionFailure, Question>> updateQuestion(
      QuestionForm question, String questionId);
  Future<Either<QuestionFailure, Unit>> deleteQuestion(String questionId);
  Future<Either<QuestionFailure, Unit>> likeQuestion(String questionId);
  Future<Either<QuestionFailure, Unit>> dislikeQuestion(String questionId);
}
