import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDarkButtonTheme {
  static ButtonThemeData get darkButtonTheme {
    return ButtonThemeData(
      colorScheme: const ColorScheme.dark(),
      // buttonColor: Color.fromRGBO(255, 115, 92, 1),
      buttonColor: Colors.red,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.h),
      ),
    );
  }
}
