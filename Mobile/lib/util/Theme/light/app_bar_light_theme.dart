import 'package:flutter/material.dart';

class CustomLightAppBar {
  static AppBarTheme get lightAppBar {
    return AppBarTheme(
      actionsIconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(color: Colors.black),
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    );
  }
}
