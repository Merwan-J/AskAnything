// ignore_for_file: unused_element

import 'package:askanything/domain/question/local/question_entity.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';

extension on QuestionEntity {
  QuestionEntity fromQuestionDto(QuestionDto question) {
    return QuestionEntity(
        id: question.id,
        title: question.title,
        description: question.description,
        topic: question.topic,
        anonymous: question.anonymous,
        answers: answers,
        likes: likes,
        dislikes: dislikes,
        image: image,
        createdAt: createdAt,
        updatedAt: updatedAt,
        author: author);
  }
}
