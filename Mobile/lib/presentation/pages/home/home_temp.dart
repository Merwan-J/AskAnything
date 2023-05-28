import 'package:askanything/presentation/pages/home/following_temp.dart';
import 'package:askanything/presentation/pages/home/for_you.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/question/question.dart';

class HomeTempPage extends StatefulWidget {
  const HomeTempPage({super.key});

  @override
  State<HomeTempPage> createState() => _HomeTempPageState();
}

class _HomeTempPageState extends State<HomeTempPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final tabScreens = [ForYou(), Following()];
    TabController _tabController = TabController(length: 2, vsync: this);
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
    return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          actions: [Icon(Icons.search)],
          title: Container(
            child: Row(
              children: [
                TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.transparent,
                  isScrollable: true,
                  tabs: [
                    Tab(
                      text: "Following",
                    ),
                    Tab(
                      text: "Explore",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: tabScreens,
        ));
  }
}
