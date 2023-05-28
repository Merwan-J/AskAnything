import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/question/question.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    Question question = Question(
        id: "1",
        title:
            "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
        description:
            "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
        author: "Merwan Junyedi",
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
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
              child: QuestionW(question: question),
            );
          },
          itemCount: 30),
    );
    // return Expanded(child: QuestionW(question: question));
  }
}
