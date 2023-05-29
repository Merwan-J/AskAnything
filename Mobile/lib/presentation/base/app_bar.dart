// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  /*
   CustomAppBar: Custom AppBar for the app
    @param title: Title of the app bar
    @param includeBackButton: Whether to include back button or not: Default: false
    @param actions: List of actions to be included in the app bar

    Actions: List of widgets to be included in the app bar, eg: actions: [IconButton(onPressed: (){}, icon: Icon(Icons.add)))]
    BackButton: Pops the current screen from the navigation stack

    @return: AppBar 
  */
  final String title;
  final List<Widget>? actions;
  final bool includeBackButton;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.includeBackButton = false,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: appBarTitle(title, context),
      leading: includeBackButton ? backButton(context) : null,
      actions: actions,
      bottom: bottom(),
    );
  }

  Widget backButton(context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          width: 50.w,
          height: 50.w,
        ),
        Positioned(
          top: 4.w,
          left: 7.w,
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 16.sp,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }

  Widget appBarTitle(String title, context) {
    return Text(
      title,
      style: Theme.of(context).appBarTheme.titleTextStyle,
    );
  }

  PreferredSizeWidget bottom() {
    return PreferredSize(
      preferredSize: Size.fromHeight(1.h),
      child: Container(
        color: Colors.grey[300],
        height: 1.h,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
