import 'package:askanything/domain/user/user.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/presentation/pages/questions.detail/questions_detail.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/question/question_list/bloc/question_list_bloc.dart';
import '../../../domain/question/question.dart';

class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = RepositoryProvider.of<AuthRepository>(context)
        .getAuthenticatedUserSync();

    Question question = Question(
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
        updatedAt: DateTime.now());
    return BlocBuilder<QuestionListBloc, QuestionListState>(
      builder: (context, state) {
        List<Question> questions = [];
        if (state is QuestionListLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is QuestionListFailure) {
          return Center(
            child: Text(state.message),
          );
        }
        if (state is QuestionListEmpty) {
          return Center(
            child: Text("No questions found"),
          );
        }
        if (state is QuestionListLoaded) {
          questions = state.questions
              .where((e) => user!.followings.contains(e.author))
              .toList();
          return RefreshIndicator(
            onRefresh: () {
              BlocProvider.of<QuestionListBloc>(context)
                  .add(GetQuestionsEvent());
              return Future<void>.delayed(const Duration(seconds: 3));
            },
            child: questions.isNotEmpty
                ? ListView.builder(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    // shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,

                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: QuestionW(question: questions[index]),
                      );
                    },
                    itemCount: questions.length)
                : Center(
                    child: Text("No questions found"),
                  ),
          );
        }
        return Center(
          child: ElevatedButton(
              onPressed: () {
                BlocProvider.of<QuestionListBloc>(context)
                    .add(GetQuestionsEvent());
              },
              child: Text("Refresh")),
        );
      },
    );
    // return Expanded(child: QuestionW(question: question));
  }
}
