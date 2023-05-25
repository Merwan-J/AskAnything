// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:askanything/domain/question/question.dart';
import 'package:intl/intl.dart';

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
    return GestureDetector(
      onTap: () {}, //TODO: Go to question page
      onDoubleTap: () {}, // TODO:Like
      onLongPress: () {}, //TODO: maybe bookmark
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10.h),
            height: 150.h,
            width: MediaQuery.of(context).size.width * 0.9,
            // width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(241, 236, 236, 1)),
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.h),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              DateFormat.jm()
                                  .format(question.createdAt)
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 35.h,
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle,
                            color: Color.fromRGBO(255, 115, 92, 1), size: 10.h),
                        Text(
                          question.topic,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 115, 92, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(question.title),
                //TODO: change like color based on user likes
                Row(
                  children: [
                    SizedBox(
                      width: 10.h,
                    ),
                    Icon(Icons.keyboard_arrow_up_outlined,
                        color: nolikes > 0
                            ? Color.fromRGBO(255, 115, 92, 1)
                            : Colors.black),
                    Text(nolikes.toString()),
                    Icon(Icons.keyboard_arrow_down_outlined,
                        color: nolikes < 0
                            ? Color.fromRGBO(255, 115, 92, 1)
                            : Colors.black),
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
    );
  }
}
