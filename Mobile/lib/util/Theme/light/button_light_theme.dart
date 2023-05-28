import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLightButton {
  static ButtonThemeData get lightButton {
    return ButtonThemeData(
      buttonColor: const Color.fromRGBO(255, 115, 92, 1),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.h),
      ),
    );
  }
}
