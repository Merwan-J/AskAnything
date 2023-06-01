import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/presentation/widgets/answer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/answer/answer.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    Answer answer = Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: AuthorDto(id: '123', email: 'doju7@gmail.com', name: 'Doju'),
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          // shrinkWrap: true,
          // scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 15.h),
              child: AnswerW(
                answer: answer,
              ),
            );
          },
          itemCount: 30),
    );
    // return Expanded(child: QuestionW(question: question));
  }
}
