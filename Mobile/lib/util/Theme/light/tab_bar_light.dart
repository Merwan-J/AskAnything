import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_color.dart';

class CustomLightTabBar {
  static TabBarTheme get lightTabar {
    return TabBarTheme(
        labelColor: CustomColor.primaryColor,
        unselectedLabelColor: Colors.black,
        labelStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ));
  }
}
