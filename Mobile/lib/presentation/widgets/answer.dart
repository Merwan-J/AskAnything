// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:flutter/material.dart';

import 'package:askanything/domain/answer/answer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
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
      onTap: () {
        context.push(Routes.QUESTIONSDETAIL);
      }, //TODO: Go to question page
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
                color: Theme.of(context).cardColor),
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
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Text(
                              DateFormat.jm()
                                  .format(answer.createdAt)
                                  .toString(),
                              style: Theme.of(context).textTheme.labelSmall,
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
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).textTheme.bodyLarge!.color),
                    Text(nolikes.toString()),
                    Icon(Icons.keyboard_arrow_down_outlined,
                        color: nolikes < 0
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).textTheme.bodyLarge!.color),
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
