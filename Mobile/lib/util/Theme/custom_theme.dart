import 'package:askanything/util/Theme/dark/appbar_dark_theme.dart';
import 'package:askanything/util/Theme/dark/bottom_navigation_dark_theme.dart';
import 'package:askanything/util/Theme/dark/button_dark_theme.dart';
import 'package:askanything/util/Theme/dark/chip_theme.dart';
import 'package:askanything/util/Theme/dark/input_dartk_theme.dart';
import 'package:askanything/util/Theme/dark/tabbar_dark_theme.dart';
import 'package:askanything/util/Theme/dark/text_dark_theme.dart';
import 'package:askanything/util/Theme/light/app_bar_light_theme.dart';
import 'package:askanything/util/Theme/light/button_light_theme.dart';
import 'package:askanything/util/Theme/light/chip_light_theme.dart';
import 'package:askanything/util/Theme/light/input_light_theme.dart';
import 'package:askanything/util/Theme/light/tab_bar_light.dart';
import 'package:askanything/util/Theme/light/text_light_theme.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  //light theme
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.light(
        primary: CustomColor.primaryColor,
        secondary: CustomColor.secondaryColor,
      ),
      chipTheme: CustomLightChip.darkChipTheme,
      cardColor: const Color.fromRGBO(241, 236, 236, 1),
      primarySwatch: CustomColor.primaryColor,
      primaryColor: const Color.fromRGBO(255, 115, 92, 1),
      canvasColor: Colors.white,
      inputDecorationTheme: CustomLightInput.lightInput,
      appBarTheme: CustomLightAppBar.lightAppBar,
      tabBarTheme: CustomLightTabBar.lightTabar,
      textTheme: CustomLightText.lightText,
      buttonTheme: CustomLightButton.lightButton,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        primarySwatch: CustomColor.primaryColor,
        primaryColor: const Color.fromRGBO(255, 115, 92, 1),
        canvasColor: const Color.fromRGBO(46, 80, 91, 1),
        cardColor: const Color.fromRGBO(77, 118, 130, 1),
        appBarTheme: CustomDarkAppBar.darkAppBar,
        chipTheme: CustomDarkChipTheme.darkChipTheme,
        tabBarTheme: CustomDarkTabBar.darkTabarTheme,
        bottomNavigationBarTheme:
            CustomDarkBottomNavigation.darkBottomNavigationTheme,
        inputDecorationTheme: CustomDarkInput.darkInputTheme,
        textTheme: CustomDarkTextTheme.darkTextTheme,
        buttonTheme: CustomDarkButtonTheme.darkButtonTheme);
  }
}
