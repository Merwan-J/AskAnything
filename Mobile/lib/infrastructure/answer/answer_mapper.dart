import 'package:askanything/infrastructure/answer/answer_dto.dart';

import '../../domain/answer/answer.dart';

extension AnswerMapper on AnswerDto {
  Answer toAnswer() {
    return Answer(
        id: id,
        text: text,
        image: image,
        likes: likes,
        dislikes: dislikes,
        author: author,
        anonymous: anonymous,
        question: questionId,
        createdAt: createdAt,
        updatedAt: updatedAt);
  }
}
