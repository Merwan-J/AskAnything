import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/question/question_list/bloc/question_list_bloc.dart';
import '../../../domain/question/question.dart';
import '../../../infrastructure/user/author_dto.dart';

class ForYou extends StatelessWidget {
  const ForYou({super.key});

  @override
  Widget build(BuildContext context) {
    Question question = Question(
        id: "64768b7ffea9d03bb6389cb9",
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
        updatedAt: DateTime.now());
    ;
    return Container(
      child: BlocBuilder<QuestionListBloc, QuestionListState>(
        builder: (context, state) {
          if (state is QuestionListLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is QuestionListEmpty) {
            return Center(
              child: Text("🤔No questions found"),
            );
          }
          if (state is QuestionListFailure) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("😢Something went wrong!"),
                  TextButton(
                      onPressed: () {
                        BlocProvider.of<QuestionListBloc>(context)
                            .add(GetQuestionsEvent());
                      },
                      child: Text("retry"))
                ],
              ),
            );
          }
          if (state is QuestionListLoaded) {
            return RefreshIndicator(
              onRefresh: () {
                BlocProvider.of<QuestionListBloc>(context)
                    .add(GetQuestionsEvent());
                return Future<void>.delayed(const Duration(seconds: 3));
              },
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  // shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 15.h),
                      child: QuestionW(question: state.questions[index]),
                    );
                  },
                  itemCount: state.questions.length),
            );
          }
          ;
          // }
          return Center(
            child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<QuestionListBloc>(context)
                      .add(GetQuestionsEvent());
                },
                child: Text(
                  "retry",
                )),
          );
        },
      ),
    );
    // return Expanded(child: QuestionW(question: question));
  }
}
