import 'package:flutter/material.dart';

class CustomDarkElevatedTheme {
  static ElevatedButtonThemeData get darkElevatedButton {
    return const ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(Colors.white),
      ),
    );
  }
}
