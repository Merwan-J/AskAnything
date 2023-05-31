import 'package:askanything/domain/question/local/question_entity.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';

extension on QuestionDto {
  Question fromDto(QuestionDto question) {
    return Question(
      id: question.id,
      title: question.title,
      description: question.description,
      topic: question.topic,
      anonymous: question.anonymous,
      answers: question.answers,
      likes: question.likes,
      dislikes: question.dislikes,
      image: question.image,
      createdAt: question.createdAt,
      updatedAt: question.updatedAt,
      author: question.author,
    );
  }
}
