// ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:askanything/presentation/pages/bottom_navigation.dart';
import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/presentation/pages/home/home_temp.dart';
import 'package:askanything/presentation/pages/mainscreen/main_screen.dart';
import 'package:askanything/presentation/pages/questions.detail/questions_detail.dart';
import 'package:askanything/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../util/Theme/custom_theme.dart';

class App extends StatelessWidget {
  AuthBloc authBloc;
  App({
    Key? key,
    required this.authBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _router = getRoutes(authBloc);
    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          darkTheme: CustomTheme.darkTheme,
          themeMode: ThemeMode.dark,
          home: child,
          // routerConfig: _router,
        );
      },
      child: QuestionDetail(),
    );
  }
}
