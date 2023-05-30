import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLightAppBar {
  static AppBarTheme get lightAppBar {
    return AppBarTheme(
      actionsIconTheme: const IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 16.sp),
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: Color.fromARGB(255, 78, 76, 76),
      ),
    );
  }
}
