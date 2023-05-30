import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/presentation/pages/followings_followers_page/followings_followers_screen.dart';
import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart';
import 'package:askanything/presentation/pages/login_and_registration/register/register_screen.dart';
import 'package:askanything/presentation/pages/mainscreen/main_screen.dart';
import 'package:askanything/presentation/pages/profile_page/profile_temp.dart';
import 'package:askanything/presentation/pages/search_page/search_page.dart';
import 'package:askanything/presentation/pages/settings_page/settings.dart';
import 'package:askanything/presentation/pages/update_profile/update_profile_screen.dart';
import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:askanything/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

GoRouter getRoutes(AuthBloc authBloc) {
  return GoRouter(routes: <GoRoute>[
    GoRoute(
      path: Routes.HOME,
      builder: (context, state) => MainScreen(),
    ),
    // GoRoute(path: Routes.ADMINS, builder: (context, state) => Admins(),),
    GoRoute(
      path: Routes.LOGIN,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.SIGNUP,
      builder: (context, state) => RegisterScreen(),
    ),
    GoRoute(
      path: Routes.SPLASH,
      builder: (context, state) => SplashScreen(),
    ),
    GoRoute(
      path: Routes.PROFILE,
      builder: (context, state) => ProfileScreen(),
    ),
    GoRoute(
      path: Routes.EDITPROFILE,
      builder: (context, state) => UpdateProfileScreen(),
    ),
    GoRoute(
      path: Routes.SEARCH,
      builder: (context, state) => SearchScreen(),
    ),
    // GoRoute(path: Routes.BOOKMARK,builder: (context, state) => BookmarkScreen(),),
    GoRoute(
      path: Routes.FOLLOWERS,
      builder: (context, state) => FollowersFollowingPage(),
    ),
    GoRoute(
      path: Routes.FOLLOWING,
      builder: (context, state) => FollowersFollowingPage(),
    ),
    GoRoute(
      path: Routes.SETTINGS,
      builder: (context, state) => Setting(),
    ),
  ]);
}
