import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDarkAppBar {
  static AppBarTheme get darkAppBar {
    return AppBarTheme(
      backgroundColor: const Color.fromRGBO(46, 80, 91, 1),
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 16.sp,
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
    );
  }
}
