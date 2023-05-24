// ignore_for_file: unused_element

import 'package:askanything/domain/question/local/question_entity.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/infrastructure/question/question_dto.dart';

extension on QuestionEntity {
  Question toQuestion() {
    return Question(
      id: id,
      title: title,
      description: description,
      topic: topic,
      anonymous: anonymous,
      author: author!,
      answers: answers!,
      likes: likes!,
      createdAt: createdAt!,
      updatedAt: updatedAt!,
      dislikes: dislikes!,
      image: image,
    );
  }

  QuestionEntity fromQuestion(Question question) {
    return QuestionEntity(
        id: question.id,
        title: question.title,
        description: question.description,
        topic: question.topic,
        anonymous: question.anonymous,
        author: question.author,
        answers: question.answers,
        likes: question.likes,
        dislikes: question.dislikes,
        createdAt: question.createdAt,
        updatedAt: question.updatedAt);
  }

  QuestionDto toQuestionDto() {
    return QuestionDto(
        id: id,
        title: title,
        description: description,
        topic: topic,
        anonymous: anonymous,
        answers: answers,
        likes: likes,
        dislikes: dislikes,
        image: image,
        createdAt: createdAt,
        updatedAt: updatedAt,
        author: author);
  }

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
