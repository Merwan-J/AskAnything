import 'package:flutter/material.dart';

import '../../custom_color.dart';

class CustomDarkTabBar {
  static TabBarTheme get darkTabarTheme {
    return TabBarTheme(
        labelColor: CustomColor.primaryColor,
        unselectedLabelColor: Colors.white);
  }
}
