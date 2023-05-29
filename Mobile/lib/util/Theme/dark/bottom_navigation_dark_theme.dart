import 'package:flutter/material.dart';

import '../../custom_color.dart';

class CustomDarkBottomNavigation {
  static BottomNavigationBarThemeData get darkBottomNavigationTheme {
    return BottomNavigationBarThemeData(
        elevation: 10,
        // backgroundColor: const Color.fromRGBO(46, 80, 91, 1),
        selectedItemColor: CustomColor.primaryColor,
        unselectedItemColor: Colors.grey);
  }
}
