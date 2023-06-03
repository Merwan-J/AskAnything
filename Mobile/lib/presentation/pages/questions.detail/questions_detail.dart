// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:askanything/application/answer/bloc/answer_event.dart';
import 'package:askanything/application/question/question_list/bloc/question_list_bloc.dart';
import 'package:askanything/domain/answer/answer_form.dart';
import 'package:askanything/infrastructure/answer/answer_repository.dart';
import 'package:askanything/infrastructure/answer/answer_repository.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/infrastructure/user/author_dto.dart';
import 'package:askanything/presentation/widgets/answer.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/answer/bloc/answer_bloc.dart';
import '../../../application/answer/bloc/answer_event.dart';
import '../../../application/answer/bloc/answer_state.dart';
import '../../../domain/answer/answer.dart';
import '../../../domain/answer/answer_form.dart';
import '../../../domain/question/question.dart';
import '../../../domain/user/user.dart';
import '../../../infrastructure/user/user_repository.dart';

class QuestionDetail extends StatefulWidget {
  Question question;
  QuestionDetail({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  State<QuestionDetail> createState() => _QuestionDetailState();
}

class _QuestionDetailState extends State<QuestionDetail> {
  String dummyQuestionId = '647817e1ffb1e50ecf827531';
  String dummyAuthorId = '6448f5ead561de32dc337d5b';
  bool isAnonymous = false;
  String finalText = '';
  TextEditingController _answerController = TextEditingController();
  final List<Answer> answerList = [
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: AuthorDto(
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
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
        author: AuthorDto(
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
  ];

  Question getQuestion(context, id) {
    Question question = RepositoryProvider.of(context).getQuestionById(id);
    return question;
  }

  //dispose contorller
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _answerController.clear();
  }

  @override
  Widget build(BuildContext context) {
    bool showDetail = MediaQuery.of(context).viewInsets.bottom == 0.0;
    User? user = RepositoryProvider.of<AuthRepository>(context)
        .getAuthenticatedUserSync();

    List<Widget> answerWidget = answerList
        .map((answer) => Row(
              children: [
                SizedBox(
                  width: 10.h,
                ),
                AnswerW(answer: answer),
              ],
            ))
        .toList();

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Comments')),
      bottomNavigationBar: BottomAppBar(),
      body: BlocProvider(
        create: (context) =>
            AnswerBloc(RepositoryProvider.of<AnswerRepository>(context)),
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            QuestionW(
              question: widget.question,
              showDetail: showDetail,
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              // color: Colors.red,
              child: BlocBuilder<AnswerBloc, AnswerState>(
                builder: (context, state) {
                  print(state);
                  if (state is InitialAnswerState) {
                    print("we are here");
                    BlocProvider.of<AnswerBloc>(context)
                        .add(LoadAnswersByQuestionEvent(widget.question.id));
                    return Expanded(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  if (state is LoadingAnswerState) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is ErrorAnswerState) {
                    print(state);

                    return Expanded(
                      child: Center(
                        child: Text(state.message),
                      ),
                    );
                  }
                  if (state is ListLoadedAnswerState && state.answer.isEmpty) {
                    return Expanded(
                      child: Center(
                        child: Text("No Answers yet, be the first to answer!"),
                      ),
                    );
                  }
                  if (state is ListLoadedAnswerState) {
                    print("presentation layer ${state.answer}");
                    return Expanded(
                      child: ListView.builder(
                          itemCount: state.answer.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 0, top: 0, bottom: 5.h),
                              child: AnswerW(answer: state.answer[index]),
                            );
                          }),
                    );
                  }
                  return Center(
                    child: Text("Something went wrong"),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.h, 16.0.h, 0.0, 8.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isAnonymous = !isAnonymous;
                      });
                    },
                    child: Container(
                      width: 40.w,
                      height: 40.h,
                      child: Image.asset(
                          // ignore: dead_code
                          'assets/images/${isAnonymous ? 'anonnymous.png' : 'user 1.png'}'),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Container(
                      height: 50.h,
                      child: TextField(
                        onChanged: (value) {
                          setState(() {});
                        },
                        controller: _answerController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: () {
                                var text = _answerController.text;
                                AnswerForm answerForm = AnswerForm(
                                    author: 'the author',
                                    text: text,
                                    anonymous: isAnonymous,
                                    question: widget.question.id,
                                    image: '');
                                print("event form $answerForm");
                                BlocProvider.of<AnswerBloc>(context)
                                    .add(AddAnswerEvent(answerForm, user!.id));
                                BlocProvider.of<AnswerBloc>(context).add(
                                    LoadAnswersByQuestionEvent(
                                        widget.question.id));
                                FocusManager.instance.primaryFocus?.unfocus();
                                _answerController.clear();
                                print("after evnet $answerForm");
                                setState(() {});
                              },
                              icon: Icon(Icons.send)),
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
      ),
    );
  }
}
