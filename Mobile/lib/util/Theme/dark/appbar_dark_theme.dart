import 'package:flutter/material.dart';

class CustomDarkAppBar {
  static AppBarTheme get darkAppBar {
    return const AppBarTheme(
      backgroundColor: Color.fromRGBO(46, 80, 91, 1),
      elevation: 10,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    );
  }
}
