import 'package:flutter/material.dart';

class CustomDarkInput {
  static InputDecorationTheme get darkInputTheme {
    return InputDecorationTheme(
      labelStyle: const TextStyle(color: Colors.white),
      hintStyle: const TextStyle(color: Colors.white),
      border: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color.fromARGB(199, 158, 158, 158), width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Color.fromRGBO(53, 194, 193, 1), width: 2.0),
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color: Colors.white),
      ),
    );
  }
}
