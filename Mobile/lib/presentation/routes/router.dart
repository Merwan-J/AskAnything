import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/application/auth/bloc/auth_state.dart';
import 'package:askanything/domain/question/question.dart';
import 'package:askanything/presentation/pages/followings_followers_page/followings_followers_screen.dart';
import 'package:askanything/presentation/pages/followings_followers_page/admin_users.dart';
import 'package:askanything/presentation/pages/login_and_registration/login/login_screen.dart';
import 'package:askanything/presentation/pages/login_and_registration/register/register_screen.dart';
import 'package:askanything/presentation/pages/mainscreen/main_screen.dart';
import 'package:askanything/presentation/pages/pending_questions/pending.dart';
import 'package:askanything/presentation/pages/profile_page/profile_temp.dart';
import 'package:askanything/presentation/pages/questions.detail/questions_detail.dart';
import 'package:askanything/presentation/pages/settings_page/settings.dart';
import 'package:askanything/presentation/pages/update_profile/update_profile_screen.dart';
import 'package:askanything/presentation/routes/routes_dart.dart';
import 'package:askanything/presentation/splash_screen/splash_screen.dart';

import 'package:go_router/go_router.dart';

GoRouter getRoutes(AuthBloc authBloc) {
  return GoRouter(routes: <GoRoute>[
    // GoRoute(path: Routes.HOME, builder: (context, state) => MainScreen()),
    GoRoute(
        path: Routes.HOME,
        builder: (context, state) {
          if (authBloc.state is AppInitialized ||
              authBloc.state is AuthUnInitialized) {
            return SplashScreen();
          } else if (authBloc.state is AuthAuthenticated) {
            return MainScreen(
              index: 0,
            );
          } else {
            return LoginScreen();
          }
        }),
    // GoRoute(path: Routes.ADMINS, builder: (context, state) => Admins(),),
    GoRoute(
      path: Routes.LOGIN,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.SIGNUP,
      builder: (context, state) => RegisterScreen(),
    ),
    // GoRoute(
    //   path: Routes.SPLASH,
    //   builder: (context, state) => SplashScreen(),
    // ),
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
      builder: (context, state) => MainScreen(
        index: 1,
      ),
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
    GoRoute(
      path: Routes.QUESTIONSDETAIL,
      name: "questionsdetail",
      builder: (context, state) => QuestionDetail(
        question: state.extra as Question,
      ),
    ),
    GoRoute(
      path: Routes.USERS,
      builder: (context, state) => AdminUsers(),
    ),
    GoRoute(
      path: Routes.ADMINS,
      builder: (context, state) => AdminUsers(),
    ),
    GoRoute(
      path: Routes.PENDINGQUESTIONS,
      builder: (context, state) => Pending_questions(),
    ),
    GoRoute(
      path: Routes.USERSSCREEN,
      builder: (context, state) => Pending_questions(),
    )
  ]);
}

//Unit test