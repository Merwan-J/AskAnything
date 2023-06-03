import 'package:askanything/application/question/question_list/bloc/question_list_bloc.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/presentation/base/app_bar.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/presentation/pages/pending_questions/pending_question.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/question/question.dart';
import '../../../infrastructure/user/author_dto.dart';
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
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
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
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
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
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
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
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
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
    return BlocProvider(
      create: (context) =>
          QuestionListBloc(RepositoryProvider.of<QuestionRepository>(context)),
      child: Scaffold(
        appBar: CustomAppBar(title: 'Pending Questions'),
        body: Container(
          height: MediaQuery.of(context).size.height,
          // color: Colors.red,
          child: BlocBuilder<QuestionListBloc, QuestionListState>(
            builder: (context, state) {
              if (state is QuestionListInitial) {
                BlocProvider.of<QuestionListBloc>(context)
                    .add(GetPendingQuestions());
                return Center(child: CircularProgressIndicator());
              } else if (state is QuestionListLoading) {
                return Center(child: CircularProgressIndicator());
              } else if (state is QuestionListFailure) {
                return Center(child: Text(state.message));
              } else if (state is QuestionListLoaded) {
                if (state.questions.isEmpty)
                  return Center(child: Text("No pending questions"));
                else {
                  return ListView.builder(
                      itemCount: state.questions.length,
                      itemBuilder: (context, index) {
                        final question = state.questions[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 7, right: 0, top: 0, bottom: 5),
                          child:
                              QuestionPending(question: state.questions[index]),
                        );
                      });
                }
              } else {
                return Center(child: Text("Something went wrong"));
              }
            },
          ),
        ),
      ),
    );
  }
}
