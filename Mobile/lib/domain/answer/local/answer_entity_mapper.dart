import 'package:askanything/domain/answer/answer.dart';

import './answer_entity.dart';

extension AnswerEntityMapper on AnswerEntity {
  Answer toAnswer() {
    return Answer(
        id: this.id,
        text: this.text,
        image: this.image,
        likes: this.likes,
        dislikes: this.dislikes,
        author: this.author,
        anonymous: this.anonymous,
        question: this.question,
        createdAt: this.createdAt,
        updatedAt: this.updatedAt);
  }
}
