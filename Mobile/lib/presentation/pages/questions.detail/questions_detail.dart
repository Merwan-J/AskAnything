import 'package:askanything/domain/answer/answer_form.dart';
import 'package:askanything/infrastructure/answer/answer_repository.dart';
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
import '../../../domain/question/question.dart';

class QuestionDetail extends StatefulWidget {
  static Question question = Question(
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
      updatedAt: DateTime.now());

  @override
  State<QuestionDetail> createState() => _QuestionDetailState();
}

class _QuestionDetailState extends State<QuestionDetail> {
  bool isAnonymous = false;
  TextEditingController _answerController = TextEditingController();
  final List<Answer> answerList = [
    Answer(
        id: "1",
        text: "I don't know man",
        image: "",
        likes: ["1", "3"],
        dislikes: ["1,23"],
        author: AuthorDto(
          name: "Merwan Junyedi",
          email: 'merwanj71@gmail.com',
          id: '123123',
        ),
        anonymous: false,
        question: "2",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now()),
  ];
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
      appBar: AppBar(title: Text('question comments')),
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
              question: QuestionDetail.question,
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
                    BlocProvider.of<AnswerBloc>(context).add(
                        LoadAnswersByQuestionEvent("6478af6ea70dcd58a46901db"));
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
                                    text: text,
                                    anonymous: isAnonymous,
                                    questionId: "6478af6ea70dcd58a46901db",
                                    image: '');
                                print("event form $answerForm");
                                BlocProvider.of<AnswerBloc>(context)
                                    .add(AddAnswerEvent(answerForm));
                                BlocProvider.of<AnswerBloc>(context).add(
                                    LoadAnswersByQuestionEvent(
                                        "6478af6ea70dcd58a46901db"));
                                FocusManager.instance.primaryFocus?.unfocus();
                                _answerController.clear();
                                print("after evnet $answerForm");
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
