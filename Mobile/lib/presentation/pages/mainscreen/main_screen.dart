import 'package:askanything/application/question/question_list/bloc/question_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/question/question_edit/question_edit_bloc.dart';
import '../../../application/question/question_edit/question_edit_state.dart';
import '../../widgets/ask_question_form.dart';
import '../bookmark_page/book_mark.dart';
import '../home/home_temp.dart';
import '../profile_page/profile_temp.dart';
import '../search_page/search_page.dart';

class MainScreen extends StatefulWidget {
  final int? index;

  MainScreen({super.key, this.index});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final screens = [
    HomePage(),
    SearchScreen(),
    // Text(""),
    BookmarkPage(),
    ProfileScreen()
  ];
  @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   int _selectedIndex = widget.index != null
  //       ? widget.index! < screens.length
  //           ? widget.index as int
  //           : 0
  //       : 0;
  // }

  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index != null ? widget.index! : 0;
  }

  @override
  Widget build(BuildContext context) {
    // int _selectedIndex = widget.index != null ? widget.index : 0;
    // final scaffoldState = GlobalKey<ScaffoldState>();
    buildBottomSheet(BuildContext context) {
      showModalBottomSheet(
          isScrollControlled: true,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.h),
                  topRight: Radius.circular(30.h))),
          context: context,
          builder: (context) => AskQuestionForm());
    }

    return SafeArea(
        child: BlocListener<QuestionEditBloc, QuestionEditState>(
      listener: (context, state) {
        if (state is QuestionEditSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Question updated successfully"),
            ),
          );
          BlocProvider.of<QuestionListBloc>(context).add(GetQuestionsEvent());
        }
        if (state is QuestionEditFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Question update failed"),
            ),
          );
        }
        if (state is QuestionEditLoadingState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Updating Question"),
            ),
          );
        }
      },
      child: Scaffold(
          floatingActionButton: Visibility(
            visible: MediaQuery.of(context).viewInsets.bottom == 0.0,
            child: FloatingActionButton(
              onPressed: () {
                buildBottomSheet(context);
              },
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: const Icon(Icons.add),
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: screens[_selectedIndex],
          bottomNavigationBar: CustomBottomNavigation()),
    ));
  }

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget CustomBottomNavigation() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onTap,
      showSelectedLabels: false,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(right: 30.h),
                child: Icon(Icons.search)),
            label: "Search"),
        BottomNavigationBarItem(
            icon: Container(
                margin: EdgeInsets.only(left: 30.h),
                child: Icon(Icons.bookmark)),
            label: "Saved"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }
}
