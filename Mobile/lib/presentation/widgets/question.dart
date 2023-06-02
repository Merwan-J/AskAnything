// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:askanything/application/bookmark/bookmark_event.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:askanything/domain/question/question.dart';
import 'package:intl/intl.dart';

import '../../application/bookmark/bookmark_bloc.dart';
import '../../application/bookmark/bookmark_state.dart';

class QuestionW extends StatelessWidget {
  Question question;
  QuestionW({
    Key? key,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final nolikes = question.likes.length - question.dislikes.length;
    final nolikes = 5;
    //TODO: make this isbookmarked dynamic
    var isBookmarked = false;
    return BlocProvider(
      create: (context) => BookmarkBloc(
          repository: RepositoryProvider.of<UserRepository>(context)),
      child: GestureDetector(
        onTap: () {}, //TODO: Go to question page
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
                                    question.author,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    DateFormat.jm()
                                        .format(question.createdAt)
                                        .toString(),
                                    style:
                                        Theme.of(context).textTheme.labelSmall,
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
                      Text(question.title,
                          style: Theme.of(context).textTheme.bodySmall),
                      SizedBox(
                        height: 10.h,
                      ),
                      //TODO: change like color based on user likes
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
                    ],
                  ),
                ),
                BlocBuilder<BookmarkBloc, BookmarkState>(
                  builder: (context, state) {
                    return Positioned(
                        top: -4.h,
                        right: 2.h,
                        child: InkWell(
                          onTap: () {
                            //TODO: make the ids dynamic
                            BlocProvider.of<BookmarkBloc>(context).add(
                                isBookmarked
                                    ? RemoveBookmarkEvent(
                                        '6478eda4d995e11e44bd63d1',
                                        "64768b7ffea9d03bb6389cb9")
                                    : AddBookmarkEvent(
                                        '6478eda4d995e11e44bd63d1',
                                        "64768b7ffea9d03bb6389cb9"));
                          },
                          child: BlocConsumer<BookmarkBloc, BookmarkState>(
                            listener: (context, state) {
                              // TODO: implement listener
                            },
                            builder: (context, state) {
                              if (state is BookmarkAddSuccess) {
                                var user = state.user;
                                //TODO: make the ids dynamic
                                isBookmarked = user.bookmarks
                                    .contains("64768b7ffea9d03bb6389cb9");
                                print(isBookmarked);
                                print(user.bookmarks);
                                print(question.id);
                              }
                              return Icon(
                                isBookmarked
                                    ? Icons.bookmark
                                    : Icons.bookmark_add_outlined,
                                size: 30.h,
                                color: Color.fromRGBO(56, 90, 100, 1),
                              );
                            },
                          ),
                        ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
