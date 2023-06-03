// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:askanything/application/bookmark/bookmark_event.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:askanything/presentation/widgets/question_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:askanything/domain/question/question.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../application/bookmark/bookmark_bloc.dart';
import '../../application/bookmark/bookmark_state.dart';
import '../../application/question/question_detail/question_detail_bloc.dart';
import '../../application/question/question_detail/question_detail_events.dart';
import '../../application/question/question_detail/question_detail_state.dart';
import '../../application/question/question_like/question_like_bloc.dart';
import '../../application/question/question_like/question_like_events.dart';
import '../../application/question/question_like/question_like_state.dart';
import '../../application/question/question_list/bloc/question_list_bloc.dart';
import '../../domain/question/question_form.dart';
import '../../domain/user/user.dart';
import '../../infrastructure/question/question_repository.dart';
import '../routes/routes_dart.dart';

class QuestionW extends StatelessWidget {
  Question question;
  final showDetail;
  QuestionW({Key? key, required this.question, this.showDetail = false})
      : super(key: key);
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

  @override
  Widget build(BuildContext context) {
    User? _user = RepositoryProvider.of<AuthRepository>(context)
        .getAuthenticatedUserSync();
    print(_user!.id == question.author.id);
    print("${_user.name} current user");
    print(question.author.name);
    return BlocProvider(
        create: (context) => BookmarkBloc(
            repository: RepositoryProvider.of<UserRepository>(context)),
        child: GestureDetector(
          onTap: () {
            context.pushNamed("questionsdetail", extra: question);
          }, //TODO: Go to question page//
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      question.author.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Text(
                                      DateFormat.jm()
                                          .format(question.createdAt)
                                          .toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
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
                          height: 16.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            getLikesAndComment(
                                context,
                                question,
                                question.likes.contains(_user.id),
                                question.dislikes.contains(_user.id)),
                            Visibility(
                              visible: _user.id == question.author.id,
                              child: Row(
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
                                        questionRepository: RepositoryProvider
                                            .of<QuestionRepository>(context)),
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
                              ),
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [
                        //     Icon(Icons.circle,
                        //         color: Theme.of(context).primaryColor,
                        //         size: 10.h),
                        //     SizedBox(
                        //       width: 3.w,
                        //     ),
                        //     Text(
                        //       question.topic,
                        //       style: TextStyle(
                        //           fontSize: Theme.of(context)
                        //               .textTheme
                        //               .bodySmall!
                        //               .fontSize,
                        //           fontWeight: FontWeight.bold,
                        //           // fontWeight: FontWeight.bold,
                        //           color: Theme.of(context).primaryColor),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 10.h,
                  // ),
                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(question.title,
                  //       style: Theme.of(context).textTheme.bodySmall),
                  // ),

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
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     getLikesAndComment(
                  //         context,
                  //         question,
                  //         question.likes.contains(_user!.id),
                  //         question.dislikes.contains(_user.id)),

                  //     //TODO: change based on user type
                  //     Row(
                  //       children: [
                  //         InkWell(
                  //           radius: 10.h,
                  //           onTap: () {
                  //             QuestionForm questionForm = QuestionForm(
                  //               anonymous: question.anonymous,
                  //               title: question.title,
                  //               topic: question.topic,
                  //               description: question.description,
                  //             );

                  //             buildBottomSheet(
                  //                 context, questionForm, question.id);
                  //           },
                  //           child: Icon(Icons.edit),
                  //         ),
                  //         SizedBox(
                  //           width: 10.h,
                  //         ),
                  //         BlocProvider(
                  //           create: (context) => QuestionDetailBloc(
                  //               questionListBloc:
                  //                   BlocProvider.of<QuestionListBloc>(context),
                  //               questionRepository:
                  //                   RepositoryProvider.of<QuestionRepository>(
                  //                       context)),
                  //           child: BlocBuilder<QuestionDetailBloc,
                  //               QuestionDetailState>(
                  //             builder: (context, state) {
                  //               return InkWell(
                  //                 onTap: () {
                  //                   BlocProvider.of<QuestionDetailBloc>(context)
                  //                       .add(QuestionDetailDeleteEvent(
                  //                           question.id));
                  //                   if (showDetail) {
                  //                     context.pop();
                  //                   }
                  //                 },
                  //                 child: Icon(
                  //                   Icons.delete,
                  //                 ),
                  //               );
                  //             },
                  //           ),
                  //         )
                  //       ],
                  //     )
                  //   ],
                  // ),,

                  BlocBuilder<BookmarkBloc, BookmarkState>(
                    builder: (context, state) {
                      if (state is BookmarkAddSuccess) {
                        _user!.bookmarks.add(question.id);
                      } else if (state is BookmarkRemoveSuccess) {
                        _user!.bookmarks.remove(question.id);
                      }
                      var isBookmarked = _user.bookmarks.contains(question.id);
                      return Positioned(
                          top: -4.h,
                          right: 2.h,
                          child: InkWell(
                            onTap: () {
                              BlocProvider.of<BookmarkBloc>(context).add(
                                  isBookmarked
                                      ? RemoveBookmarkEvent(
                                          _user!.id, question.id)
                                      : AddBookmarkEvent(
                                          _user!.id, question.id));
                            },
                            child: BlocConsumer<BookmarkBloc, BookmarkState>(
                              listener: (context, state) {
                                if (state is BookmarkAddSuccess) {
                                  isBookmarked = true;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Question bookmarked successfully")));
                                  BlocProvider.of<QuestionListBloc>(context)
                                      .add(GetQuestionsEvent(isRefresh: true));
                                }
                                if (state is BookmarkRemoveSuccess) {
                                  isBookmarked = false;
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text(
                                              "Question removed from bookmark")));
                                  BlocProvider.of<QuestionListBloc>(context)
                                      .add(GetQuestionsEvent(isRefresh: false));
                                }
                              },
                              builder: (context, state) {
                                if (state is BookmarkAddSuccess) {
                                  print("bookmark add success${state.user}}");
                                  var user = state.user;
                                  isBookmarked =
                                      user.bookmarks.contains(question.id);
                                } else if (state is BookmarkRemoveSuccess) {
                                  var user = state.user;
                                  isBookmarked =
                                      !user.bookmarks.contains(question.id);
                                }
                                return Icon(
                                  isBookmarked
                                      ? Icons.bookmark
                                      : Icons.bookmark_add_outlined,
                                  size: 30.h,
                                  color: const Color.fromRGBO(56, 90, 100, 1),
                                );
                              },
                            ),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
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
                  BlocProvider.of<QuestionLikeBloc>(context)
                      .add(QuestionLikeEvent.like(question.id));
                },
                child: Icon(Icons.keyboard_arrow_up_outlined,
                    color: isLiked
                        ? Theme.of(context).primaryColor
                        : Colors.white),
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
