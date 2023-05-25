import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart';
import 'package:askanything/presentation/pages/login_and_registration/login/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:askanything/presentation/splash_screen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          home: child,
        );
      },
      // child: const RegisterScreen(),
      // child: const LoginScreen(),
    );
  }
}
