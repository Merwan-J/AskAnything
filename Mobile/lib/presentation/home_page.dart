// import 'package:askanything/presentation/pages/bottom_navigation.dart';
import 'package:askanything/presentation/pages/home/home_temp.dart';
import 'package:askanything/presentation/pages/search_page/search_page.dart';
import 'package:askanything/presentation/pages/update_profile/update_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pages/profile_page/profile_temp.dart';
import './pages/bookmark_page/book_mark.dart';
import 'widgets/ask_question_form.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final screens = [
    HomePage(),
    SearchScreen(),
    // Text(""),
    BookmarkPage(),
    ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
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
          body: IndexedStack(
            // IndexedStack is used to keep the state of the pages
            index: _selectedIndex,
            children: screens,
          ),
          bottomNavigationBar: CustomBottomNavigation()),
    );
  }

  void _onTap(int index) {
    // if (index == 2) {
    //   return;
    // }
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
