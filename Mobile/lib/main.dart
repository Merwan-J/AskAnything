import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/presentation/widgets/answer.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            home: child,
          );
        },
        child: Scaffold(body: Home()));
  }
}

class Home extends StatelessWidget {
  Question question = Question(
      id: "1",
      title:
          "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
      description:
          "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
      author: "Merwan Junyedi",
      anonymous: false,
      answers: ["1", "2", "3"],
      topic: "Technology",
      likes: ["1", "2"],
      dislikes: ["1,2"],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now());
  Answer answer = Answer(
      id: "1",
      text: "I don't know man",
      image: "",
      likes: ["1", "3"],
      dislikes: ["1,23"],
      author: "Doju",
      anonymous: false,
      question: "2",
      createdAt: DateTime.now(),
      updatedAt: DateTime.now());

  buildBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.h),
                topRight: Radius.circular(30.h))),
        context: context,
        builder: (context) => DraggableScrollableSheet(
              expand: false,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                          top: -15.h,
                          child: Container(
                            height: 5.h,
                            width: 60.h,
                            color: Colors.grey,
                          )),
                      Container(
                        padding: EdgeInsets.only(
                            top: 20.h,
                            right: 20.h,
                            left: 20.h,
                            // ),
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        // height: MediaQuery.of(context).size.height * 0.8,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.h)),
                                  hintText: "Type your answer here"),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.h)),
                                  hintText: "Type your answer here"),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              // height: 300.h,
                              child: TextField(
                                maxLines: 10,
                                // expands: true,
                                // keyboardType: TextInputType.multiline,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.h)),
                                    hintText: "Type your answer here"),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(Icons.cloud_upload_outlined),
                                  SizedBox(
                                    width: 10.h,
                                  ),
                                  Text("Upload Image")
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                const Text("Anonymous"),
                                Switch(
                                    activeTrackColor:
                                        Color.fromRGBO(226, 230, 234, 1),
                                    activeColor:
                                        Color.fromRGBO(255, 115, 92, 1),
                                    value: true,
                                    onChanged: (_) {})
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("Cancel"),
                                SizedBox(
                                  width: 10.h,
                                ),
                                Container(
                                  // color: Colors.blue,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 115, 92, 1),
                                      borderRadius:
                                          BorderRadius.circular(10.h)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.h),
                                  child: Text("Post",
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
                            )
                          ],
                        ),

                        // color: Colors.red,
                      ),
                    ],
                  ),
                );
              },
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          QuestionW(
            question: question,
          ),
          SizedBox(
            height: 20.h,
          ),
          AnswerW(answer: answer),
          SizedBox(
            height: 15.h,
          ),
          TextButton(
              onPressed: () {
                buildBottomSheet(context);
              },
              child: Text("Ask Question")),
        ],
      ),
    );
  }
}
