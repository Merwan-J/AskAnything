import 'package:askanything/domain/answer/answer_form.dart';

import './answer_form_dto.dart';

extension AnswerFormMapper on AnswerForm {
  AnswerFormDto toAnswerFormDto() {
    return AnswerFormDto(
        text: text, image: image, anonymous: anonymous, questionId: questionId);
  }
}
