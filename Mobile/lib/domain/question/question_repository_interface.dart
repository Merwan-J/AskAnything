import 'package:askanything/domain/question/question.dart';
import 'package:askanything/domain/question/question_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IQuestionRepository {
  Future<Either<QuestionFailure, List<Question>>> getQuestions();
  Future<Either<QuestionFailure, Question>> getQuestionsById(String questionId);
  Future<Either<QuestionFailure, Unit>> askQuestion(Question question);
  Future<Either<QuestionFailure, Unit>> updateQuestion(Question question);
  Future<Either<QuestionFailure, Unit>> deleteQuestion(String questionId);
  Future<Either<QuestionFailure, Unit>> likeQuestion(String questionId);
  Future<Either<QuestionFailure, Unit>> dislikeQuestion(String questionId);
}
