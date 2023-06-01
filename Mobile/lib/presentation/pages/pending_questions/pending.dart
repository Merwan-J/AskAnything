import 'package:askanything/presentation/base/app_bar.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/presentation/pages/pending_questions/pending_question.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../domain/question/question.dart';
import '../../widgets/question.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Pending_questions extends StatelessWidget {
  List<Question> questionList = [
    Question(
        id: "1",
        title:
            "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
        description:
            "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
        author: AuthorDto(
          name: "Merwan Junyedi",
          email: 'merwanj71@gmail.com',
          id: '123123',
        ),
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Question(
        id: "1",
        title:
            "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
        description:
            "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
        author: AuthorDto(
          name: "Merwan Junyedi",
          email: 'merwanj71@gmail.com',
          id: '123123',
        ),
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Question(
        id: "1",
        title:
            "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
        description:
            "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
        author: AuthorDto(
          name: "Merwan Junyedi",
          email: 'merwanj71@gmail.com',
          id: '123123',
        ),
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Question(
        id: "1",
        title:
            "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
        description:
            "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
        author: AuthorDto(
          name: "Merwan Junyedi",
          email: 'merwanj71@gmail.com',
          id: '123123',
        ),
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> questionWidget = questionList
        .map((question) => Row(
              children: [
                SizedBox(
                  width: 10.h,
                ),
                QuestionPending(question: question),
              ],
            ))
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: 'Pending Questions'),
      body: Container(
        height: MediaQuery.of(context).size.height,
        // color: Colors.red,
        child: Expanded(
          child: ListView.builder(
              itemCount: questionList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 7, right: 0, top: 0, bottom: 5),
                  child: questionWidget[index],
                );
              }),
        ),
      ),
    );
  }
}
