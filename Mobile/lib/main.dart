import 'package:askanything/presentation/base/bottomBar.dart';
import 'package:askanything/presentation/pages/home/home_page.dart';
// import 'package:askanything/presentation/base/home_page.dart';
import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart';
import 'package:askanything/presentation/pages/login_and_registration/register/register_screen.dart';
import 'package:askanything/presentation/pages/update_profile/update_profile_screen.dart';
import 'package:askanything/presentation/widgets/update_profie_form.dart';
import 'package:askanything/util/custom_theme.dart';
import 'package:askanything/presentation/pages/search_page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:askanything/presentation/splash_screen/splash_screen.dart';
import 'package:askanything/domain/answer/answer.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/presentation/widgets/answer.dart';
import 'package:askanything/presentation/widgets/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            theme: CustomTheme.lightTheme,
            darkTheme: CustomTheme.darkTheme,
            themeMode: ThemeMode.system,
            home: child,
          );
        },
        child: UpdateProfileScreen());
  }
}
