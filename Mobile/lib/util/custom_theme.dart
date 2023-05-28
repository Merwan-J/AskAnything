import 'package:askanything/util/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//make a custom theme for the app

class CustomTheme {
  //light theme
  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: CustomColor.primaryColor,
        secondary: CustomColor.secondaryColor,
      ),

      chipTheme: ChipThemeData(
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
          )),
      brightness: Brightness.light,
      cardColor: Color.fromRGBO(241, 236, 236, 1),
      primarySwatch: CustomColor.primaryColor,
      primaryColor: const Color.fromRGBO(255, 115, 92, 1),
      canvasColor: Colors.white,
      // canvasColor: const Color.fromRGBO(251, 249, 249, 1),
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          labelStyle: TextStyle(color: Colors.black),
          hintStyle: TextStyle(color: Colors.black),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromRGBO(53, 194, 193, 1), width: 2.0),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.black),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          activeIndicatorBorder:
              BorderSide(width: 3, color: Color.fromRGBO(53, 194, 193, 1))),
      appBarTheme: const AppBarTheme(
        actionsIconTheme: IconThemeData(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      tabBarTheme: TabBarTheme(
          labelColor: CustomColor.primaryColor,
          unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          )),

      //give button thext theme

      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          fontSize: 30.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        labelLarge: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        labelSmall: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        displayLarge: GoogleFonts.poppins(
          fontSize: 96.sp,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        titleMedium: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: const Color.fromRGBO(255, 115, 92, 1),
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.h),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    //generate dark theme based on the above light theme
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: CustomColor.primaryColor,
      primaryColor: const Color.fromRGBO(255, 115, 92, 1),
      canvasColor: const Color.fromRGBO(46, 80, 91, 1),
      cardColor: const Color.fromRGBO(77, 118, 130, 1),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromRGBO(46, 80, 91, 1),
        elevation: 10,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          // style: ButtonStyle(foregroundColor: Colors.white)

          ),
      //chip theme for dark mode based on the above lightmode
      chipTheme: ChipThemeData(
          disabledColor: Colors.grey,
          selectedColor: CustomColor.primaryColor,
          secondarySelectedColor: CustomColor.secondaryColor,
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.h),
          ),
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          ),
          secondaryLabelStyle: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
          )),

      tabBarTheme: TabBarTheme(
          labelColor: CustomColor.primaryColor,
          unselectedLabelColor: Colors.white),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 10,
          // backgroundColor: const Color.fromRGBO(46, 80, 91, 1),
          selectedItemColor: CustomColor.primaryColor,
          unselectedItemColor: Colors.grey),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
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
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          fontSize: 30.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        labelLarge: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        labelSmall: GoogleFonts.poppins(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        displayLarge: GoogleFonts.poppins(
          fontSize: 96.sp,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        titleMedium: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        titleSmall: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.poppins(
          fontSize: 20.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.poppins(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.dark(),
        // buttonColor: Color.fromRGBO(255, 115, 92, 1),
        buttonColor: Colors.red,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.h),
        ),
      ),
    );
    // var lightTheme = CustomTheme.lightTheme;
    // return lightTheme.copyWith(
    //   brightness: Brightness.dark,
    //   canvasColor: Colors.blue,
    //   // canvasColor: const Color.fromRGBO(30, 30, 30, 1),
    //   appBarTheme: lightTheme.appBarTheme.copyWith(
    //     backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
    //     iconTheme: const IconThemeData(
    //       color: Colors.white,
    //     ),
    //   ),
    //   textTheme: lightTheme.textTheme.copyWith(
    //     titleLarge: GoogleFonts.poppins(
    //       fontSize: 18.sp,
    //       fontWeight: FontWeight.w500,
    //       color: Colors.white,
    //     ),
    //     labelLarge: GoogleFonts.poppins(
    //       fontSize: 16.sp,
    //       fontWeight: FontWeight.w500,
    //       color: Colors.white,
    //     ),
    //     displayLarge: GoogleFonts.poppins(
    //       fontSize: 96.sp,
    //       fontWeight: FontWeight.w300,
    //       color: Colors.white,
    //     ),
    //     titleMedium: GoogleFonts.poppins(
    //       fontSize: 16.sp,
    //       fontWeight: FontWeight.w500,
    //       color: Colors.white,
    //     ),
    //     titleSmall: GoogleFonts.poppins(
    //       fontSize: 14.sp,
    //       fontWeight: FontWeight.w500,
    //       color: Colors.white,
    //     ),
    //     bodyLarge: GoogleFonts.poppins(
    //       fontSize: 20.sp,
    //       fontWeight: FontWeight.w500,
    //       color: Colors.white,
    //     ),
    //   ),
    // );
  }
}
