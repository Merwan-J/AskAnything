// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:askanything/application/question/question_edit/question_edit_bloc.dart';
import 'package:askanything/domain/question/question_form.dart';
import 'package:askanything/presentation/widgets/question_edit.dart';
import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:askanything/domain/question/question.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../application/question/question_edit/question_edit_events.dart';
import 'ask_question_form.dart';

class QuestionW extends StatelessWidget {
  Question question;
  QuestionW({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    buildBottomSheet(
        BuildContext context, QuestionForm questionForm, String questionId) {
      showModalBottomSheet(
          isScrollControlled: true,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.h),
                  topRight: Radius.circular(30.h))),
          context: context,
          builder: (context) => UpdateQuestionForm(
                questionForm: questionForm,
                questionId: questionId,
              ));
    }

    // final nolikes = question.likes.length - question.dislikes.length;
    final nolikes = 5;
    return GestureDetector(
      onTap: () {
        context.push(Routes.QUESTIONSDETAIL);
      }, //TODO: Go to question page
      onDoubleTap: () {}, // TODO:Like
      onLongPress: () {}, //TODO: maybe bookmark
      child: FittedBox(
        child: Container(
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10.h),
                //prevent expanding

                // height: 150.h,
                width: MediaQuery.of(context).size.width * 0.9,
                // width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).cardColor),
                // color: Colors.red,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                                radius: 20, child: Icon(Icons.person)),
                            SizedBox(
                              width: 10.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  question.anonymous
                                      ? "Anonnymous"
                                      : question.author.name,
                                  style: Theme.of(context).textTheme.labelLarge,
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Text(
                                  //calculate difference between now and createdAt

                                  DateFormat.yMMMd()
                                      .add_jm()
                                      .format(question.createdAt)
                                      .toString(),

                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.circle,
                                color: Theme.of(context).primaryColor,
                                size: 10.h),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              question.topic,
                              style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .fontSize,
                                  fontWeight: FontWeight.bold,
                                  // fontWeight: FontWeight.bold,
                                  color: Theme.of(context).primaryColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(question.title,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    //TODO: change like color based on user likes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10.h,
                            ),
                            Icon(Icons.keyboard_arrow_up_outlined,
                                color: nolikes > 0
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color),
                            Text(nolikes.toString()),
                            Icon(Icons.keyboard_arrow_down_outlined,
                                color: nolikes < 0
                                    ? Theme.of(context).primaryColor
                                    : Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .color),
                            SizedBox(
                              width: 10.h,
                            ),
                            Icon(Icons.mode_comment_outlined),
                            SizedBox(
                              width: 5.h,
                            ),
                            Text(question.answers.length.toString()),
                          ],
                        ),

                        //TODO: change based on user type
                        Row(
                          children: [
                            InkWell(
                              radius: 10.h,
                              onTap: () {
                                QuestionForm questionForm = QuestionForm(
                                  anonymous: question.anonymous,
                                  title: question.title,
                                  topic: question.topic,
                                  description: question.description,
                                );

                                buildBottomSheet(
                                    context, questionForm, question.id);
                              },
                              child: Icon(Icons.edit),
                            ),
                            SizedBox(
                              width: 10.h,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.delete,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: -4.h,
                  right: 2.h,
                  child: Icon(
                    Icons.bookmark,
                    size: 30.h,
                    //TODO: change color based on user bookmark
                    color: Color.fromRGBO(56, 90, 100, 1),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
