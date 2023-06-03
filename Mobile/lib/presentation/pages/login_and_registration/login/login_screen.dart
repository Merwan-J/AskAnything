import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/application/auth/bloc/auth_event.dart';
import 'package:askanything/application/login/bloc/login_bloc.dart';
import 'package:askanything/application/login/bloc/login_event.dart';
import 'package:askanything/application/login/bloc/login_state.dart';
import 'package:askanything/domain/auth/login_form.dart';
import 'package:askanything/presentation/app.dart';
import 'package:askanything/presentation/pages/home/home_temp.dart';
import 'package:askanything/presentation/pages/questions.detail/questions_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../routes/routes_dart.dart';
import '../../mainscreen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isNetworkInProgress = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginStateLoading) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Logging in...')),
            );
            setState(() {
              _isNetworkInProgress = true;
            });
          } else {
            setState(() {
              _isNetworkInProgress = false;
            });
          }

          if (state is LoginStateSuccess) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();

            // Notify auth bloc that user has logged in
            BlocProvider.of<AuthBloc>(context)
                .add(AuthEventSignedIn(state.user, state.token));

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Logged in successfully')),
            );
            // context.go(Routes.SEARCH);

            // Navigate to home screen
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => QuestionDetail(),
              ),
            );
            print('object');
          }

          if (state is LoginStateFailure) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('cannot log in '),
                backgroundColor: Theme.of(context).errorColor,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(15.h),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(15.h),
                      ),
                      child: IconButton(
                        onPressed: () {
                          context.go(Routes.SIGNUP);
                        },
                        icon: const Icon(Icons.arrow_back_ios),
                        iconSize: 17.h,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.h),
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text('Welcome back! Glad to see you, Again!',
                      style: Theme.of(context).textTheme.titleLarge),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !passwordVisible,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Container(
                    width: double.infinity,
                    height: 50.h,
                    child: ElevatedButton(
                      onPressed: _isNetworkInProgress
                          ? null
                          : () {
                              LoginForm form = LoginForm(
                                  emailAddress: _emailController.text,
                                  password: _passwordController.text);
                              print(form);
                              BlocProvider.of<LoginBloc>(context)
                                  .add(LoginEventLogin(form)
                                      // LoginEvent.login(form),
                                      );
                            },
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge!.fontSize,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.go(Routes.SIGNUP);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(255, 115, 92, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
