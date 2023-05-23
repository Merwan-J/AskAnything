import 'package:askanything/domain/question/question_form.dart';

import 'package:askanything/infrastructure/question/question_form_dto.dart';

extension QuestionFormMapper on QuestionForm {
  QuestionFormDto toDto() {
    return QuestionFormDto(
      title: title,
      description: description,
      topic: topic,
      anonymous: anonymous,
    );
  }
}
