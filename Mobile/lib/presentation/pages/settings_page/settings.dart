// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/infrastructure/question/question_repository.dart';
import 'package:askanything/infrastructure/user/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../application/auth/bloc/auth_event.dart';
import '../../../application/user/user_bloc.dart';
import '../../../application/user/user_event.dart';
import '../../../application/user/user_state.dart';
import '../../../domain/user/user.dart';
import '../../routes/routes_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = true;

  void toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (context, child) => MaterialApp(
            theme: _isDarkMode
                ? ThemeData.dark()
                : ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
            home: const Setting()));
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(6.h),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(15.h),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios),
            iconSize: 17.h,
          ),
        ),
        title: Container(
          margin: EdgeInsets.only(top: 15.h, bottom: 10.h),
          child: Text(
            'Settings',
            style: TextStyle(fontSize: 25.h, fontWeight: FontWeight.bold),
            // style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 2.h,
          ),
          SizedBox(
            height: 20.h,
          ),
          SettingsBody(),
        ],
      ),
    );
  }
}

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    User? _user = RepositoryProvider.of<AuthRepository>(context)
        .getAuthenticatedUserSync();
    return Expanded(
        child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.lightbulb),
          title: Text(
            'Dark Mode',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text(
            'Help Center',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text(
            'Terms and Conditions',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'Logout',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          onTap: () {
            BlocProvider.of<AuthBloc>(context).add(AuthEventSignOut());
          },
        ),
        BlocProvider(
          create: (context) => UserBloc(
              RepositoryProvider.of<UserRepository>(context),
              RepositoryProvider.of<QuestionRepository>(context)),
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              return ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Delete Account',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
                onTap: () {
                  BlocProvider.of<UserBloc>(context).add(DeleteUser(_user!.id));
                  context.go(Routes.SIGNUP);
                },
              );
            },
          ),
        ),
      ],
    ));
  }
}
