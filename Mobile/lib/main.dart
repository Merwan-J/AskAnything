import 'package:askanything/presentation/base/bottomBar.dart';
import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart';
import 'package:askanything/presentation/pages/login_and_registration/login/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:askanything/presentation/splash_screen/splash_screen.dart';
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
        child: Home());
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
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            home: child,
          );
        },
        child: Home());
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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BottomBar());
  }
}
