import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custom_color.dart';

class CustomLightChip {
  static ChipThemeData get darkChipTheme {
    return ChipThemeData(
        disabledColor: Colors.grey,
        selectedColor: CustomColor.primaryColor,
        secondarySelectedColor: CustomColor.secondaryColor,
        padding: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
        labelStyle: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ),
        secondaryLabelStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
        ));
  }
}
