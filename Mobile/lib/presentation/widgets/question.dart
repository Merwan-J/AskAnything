// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:askanything/application/question/question_edit/question_edit_bloc.dart';
import 'package:askanything/application/question/question_like/question_like_bloc.dart';
import 'package:askanything/application/question/question_like/question_like_events.dart';
import 'package:askanything/domain/question/question_form.dart';
import 'package:askanything/presentation/widgets/question_edit.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:askanything/domain/question/question.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../application/question/question_detail/question_detail_bloc.dart';
import '../../application/question/question_detail/question_detail_events.dart';
import '../../application/question/question_detail/question_detail_state.dart';
import '../../application/question/question_edit/question_edit_events.dart';
import '../../application/question/question_like/question_like_state.dart';
import '../../application/question/question_list/bloc/question_list_bloc.dart';
import '../../infrastructure/question/question_repository.dart';
import 'ask_question_form.dart';

class QuestionW extends StatelessWidget {
  Question question;
  final showDetail;
  QuestionW({Key? key, required this.question, this.showDetail = false})
      : super(key: key);

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
    final userId = "6448f5ead561de32dc337d5b";

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
                    Visibility(
                        visible: showDetail,
                        child: Column(
                          children: [
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(question.description,
                                  style: TextStyle(fontSize: 12.sp)),
                            ),
                          ],
                        )),
                    //TODO: change like color based on user likes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        getLikesAndComment(
                            context,
                            question,
                            question.likes.contains(userId),
                            question.dislikes.contains(userId)),

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
                            BlocProvider(
                              create: (context) => QuestionDetailBloc(
                                  questionListBloc:
                                      BlocProvider.of<QuestionListBloc>(
                                          context),
                                  questionRepository:
                                      RepositoryProvider.of<QuestionRepository>(
                                          context)),
                              child: BlocBuilder<QuestionDetailBloc,
                                  QuestionDetailState>(
                                builder: (context, state) {
                                  return InkWell(
                                    onTap: () {
                                      BlocProvider.of<QuestionDetailBloc>(
                                              context)
                                          .add(QuestionDetailDeleteEvent(
                                              question.id));
                                      if (showDetail) {
                                        context.pop();
                                      }
                                    },
                                    child: Icon(
                                      Icons.delete,
                                    ),
                                  );
                                },
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

  Widget getLikesAndComment(
    context,
    Question question,
    bool isLiked,
    bool isDisliked,
  ) {
    return BlocProvider(
      create: (context) => QuestionLikeBloc(
          questionListBloc: BlocProvider.of<QuestionListBloc>(context),
          questionRepository:
              RepositoryProvider.of<QuestionRepository>(context)),
      child: BlocBuilder<QuestionLikeBloc, QuestionLikeState>(
        builder: (context, state) {
          return Row(
            children: [
              SizedBox(
                width: 10.h,
              ),
              InkWell(
                radius: 20,
                onTap: () {
                  //TODO: like
                  BlocProvider.of<QuestionLikeBloc>(context)
                      .add(QuestionLikeEvent.like(question.id));
                },
                child: Icon(Icons.keyboard_arrow_up_outlined,
                    color: isLiked
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).textTheme.bodyLarge!.color),
              ),
              SizedBox(
                width: 10.h,
              ),
              Text((question.likes.length - question.dislikes.length)
                  .toString()),
              SizedBox(
                width: 10.h,
              ),
              InkWell(
                onTap: () {
                  //TODO: dislike
                  BlocProvider.of<QuestionLikeBloc>(context)
                      .add(QuestionLikeEvent.dislike(question.id));
                },
                child: Icon(Icons.keyboard_arrow_down_outlined,
                    color: isDisliked
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).textTheme.bodyLarge!.color),
              ),
              SizedBox(
                width: 20.h,
              ),
              Icon(Icons.mode_comment_outlined),
              SizedBox(
                width: 5.h,
              ),
              Text(question.answers.length.toString()),
            ],
          );
        },
      ),
    );
  }
}
