import 'package:flutter/material.dart';

class CustomLightAppBar {
  static get lightAppBar {
    return InputDecorationTheme(
        filled: true,
        labelStyle: const TextStyle(color: Colors.black),
        hintStyle: const TextStyle(color: Colors.black),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Color.fromRGBO(53, 194, 193, 1), width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.black),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        activeIndicatorBorder:
            const BorderSide(width: 3, color: Color.fromRGBO(53, 194, 193, 1)));
  }
}
