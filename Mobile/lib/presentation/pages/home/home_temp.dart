import 'package:askanything/domain/question/question_repository_interface.dart';
import 'package:askanything/presentation/pages/home/following_temp.dart';
import 'package:askanything/presentation/pages/home/for_you.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/question/question_list/bloc/question_list_bloc.dart';
import '../../../domain/question/question.dart';
import '../../../infrastructure/user/author_dto.dart';
import '../../widgets/end_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openEndDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    final tabScreens = [ForYou(), Following()];
    TabController _tabController = TabController(length: 2, vsync: this);
    Question(
        id: "1",
        title:
            "What do you think is the best GPU to play Apex nds?  Do you have any suggestions?",
        description:
            "What do you think is the best GPU to play Apex Legends?  Do you have any suggestions?",
        author: AuthorDto(
            name: "Merwan Junyedi", id: "1", profilePic: "", email: "merwant"),
        anonymous: false,
        answers: ["1", "2", "3"],
        topic: "Technology",
        likes: ["1", "2"],
        dislikes: ["1,2"],
        createdAt: DateTime.now(),
        updatedAt: DateTime.now());
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        elevation: 0.5,
        actions: [
          Icon(Icons.search),
          IconButton(
            icon: const Icon(Icons.grid_view_rounded), // Change the icon here
            onPressed: () {
              openEndDrawer();
            },
          ),
        ],
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
      ),
      endDrawer: MyDrawer(),
    );
  }
}
