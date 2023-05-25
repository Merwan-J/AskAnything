// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:askanything/domain/answer/answer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class AnswerW extends StatelessWidget {
  Answer answer;
  AnswerW({
    Key? key,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nolikes = answer.likes.length - answer.dislikes.length;
    return GestureDetector(
      onTap: () {}, //TODO: Go to question page
      onDoubleTap: () {}, // TODO:Like
      onLongPress: () {}, //TODO: maybe bookmark
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10.h),
            // height: 150.h,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(radius: 15.h, child: Icon(Icons.person)),
                        SizedBox(
                          width: 10.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              answer.author,
                              style: TextStyle(
                                  color: Colors.black, fontSize: 15.h),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              DateFormat.jm()
                                  .format(answer.createdAt)
                                  .toString(),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(
                    //   width: 35.h,
                    // ),
                    Row(
                      children: [
                        Icon(Icons.check_circle,
                            color: const Color.fromRGBO(255, 115, 92, 1),
                            size: 10.h),
                        const Text(
                          "69",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 115, 92, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      padding: EdgeInsets.all(10.h), child: Text(answer.text)),
                ),
                //TODO: change like color based on user likes
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
