import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/application/auth/bloc/auth_state.dart';
import 'package:askanything/infrastructure/answer/answer_api.dart';
import 'package:askanything/infrastructure/answer/answer_repository.dart';
import 'package:askanything/infrastructure/auth/auth_api.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/profile/profile_api.dart';
import 'package:askanything/infrastructure/profile/profile_repository.dart';
import 'package:askanything/infrastructure/question/question_provider.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/infrastructure/user/user_api.dart';
import 'package:askanything/presentation/app.dart';
import 'package:askanything/presentation/pages/followings_followers_page/followings_followers_screen.dart';
import 'package:askanything/presentation/pages/home/home_temp.dart';
// import 'package:askanything/presentation/base/home_page.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/question/question_edit/question_edit_bloc.dart';
import 'application/question/question_list/bloc/question_list_bloc.dart';
import 'application/question/question_post/bloc/question_post_bloc.dart';
import 'infrastructure/user/user_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => CustomHttpClient()),
        RepositoryProvider(create: (context) => SharedPreferenceService())
      ],
      child: MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
              create: (context) => QuestionProvider(
                  RepositoryProvider.of<CustomHttpClient>(context))),
          RepositoryProvider(
              create: ((context) =>
                  AnswerAPI(RepositoryProvider.of<CustomHttpClient>(context)))),
          RepositoryProvider(
              create: ((context) =>
                  AuthApi(RepositoryProvider.of<CustomHttpClient>(context)))),
          RepositoryProvider(
              create: ((context) => ProfileApi(
                  RepositoryProvider.of<CustomHttpClient>(context)))),
          RepositoryProvider(
              create: ((context) =>
                  UserApi(RepositoryProvider.of<CustomHttpClient>(context)))),
        ],
        child: MultiRepositoryProvider(
            providers: [
              RepositoryProvider(
                  create: (context) => AnswerRepository(
                      RepositoryProvider.of<AnswerAPI>(context))),
              RepositoryProvider(
                  create: (context) => AuthRepository(
                      RepositoryProvider.of<AuthApi>(context),
                      RepositoryProvider.of<SharedPreferenceService>(context))),
              RepositoryProvider(
                  create: (context) => ProfileRepository(
                      RepositoryProvider.of<ProfileApi>(context))),
              RepositoryProvider(
                  create: (context) => QuestionRepository(
                      RepositoryProvider.of<QuestionProvider>(context))),
              RepositoryProvider(
                  create: (context) =>
                      UserRepository(RepositoryProvider.of<UserApi>(context)))
            ],
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                    create: (context) => QuestionEditBloc(
                        RepositoryProvider.of<QuestionRepository>(context))),
                BlocProvider(
                    create: (context) => QuestionPostBloc(
                        RepositoryProvider.of<QuestionRepository>(context))),
                BlocProvider(
                    create: (context) => QuestionListBloc(
                        RepositoryProvider.of<QuestionRepository>(context))),
                BlocProvider(
                    create: (context) => AuthBloc(
                        authRepository:
                            RepositoryProvider.of<AuthRepository>(context),
                        sharedPrefsService:
                            RepositoryProvider.of<SharedPreferenceService>(
                                context)))
              ],
              child: BlocListener<AuthBloc, AuthState>(listener:
                  (context, state) {
                //TODO: implement listener
                if (state is AuthAuthenticated) {
                  RepositoryProvider.of<CustomHttpClient>(context).authToken =
                      state.token;
                } else if (state is AuthUnauthenticated) {
                  RepositoryProvider.of<CustomHttpClient>(context).authToken =
                      null;
                } else if (state is AppInitialized) {
                  RepositoryProvider.of<CustomHttpClient>(context).authToken =
                      state.token;
                }
              }, child:
                  BlocBuilder<AuthBloc, AuthState>(builder: ((context, state) {
                return App(
                  authBloc: BlocProvider.of<AuthBloc>(context),
                );
              }))),
            )),
      )));
}



//