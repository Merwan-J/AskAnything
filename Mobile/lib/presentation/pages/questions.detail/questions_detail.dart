import 'package:askanything/presentation/widgets/answer.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../domain/answer/answer.dart';
import '../../../domain/question/question.dart';

class QuestionDetail extends StatelessWidget {
  static Question question = Question(
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
  final List<Answer> answerList = [
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "2",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
    Answer(
        id: "3",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: "Doju",
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> answerWidget = answerList
        .map((answer) => Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                AnswerW(answer: answer),
              ],
            ))
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text('question comments')),
      bottomNavigationBar: BottomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          QuestionW(question: question),
          Container(
            // color: Colors.red,
            child: Expanded(
              child: ListView.builder(
                  itemCount: answerList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 0, top: 0, bottom: 5),
                      child: answerWidget[index],
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Image.asset('assets/images/user 1.png'),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {}, icon: Icon(Icons.send)),
                        border: InputBorder.none,
                        hintText: "reply",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
