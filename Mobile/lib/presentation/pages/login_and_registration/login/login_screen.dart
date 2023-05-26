import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    iconSize: 17.h,
                  ),
                ),
                child: IconButton(
                  onPressed: () {},
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
              // decoration: Theme.of(context).inputDecorationTheme.,
              decoration: InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(160, 238, 238, 238),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                        color: Color.fromARGB(199, 158, 158, 158), width: 2.0),
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  hintText: 'Enter your email',
                ),
              ),
              obscureText: !passwordVisible,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                  ),
                ),
              ],
            ),
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
                onPressed: () {},
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all(
                //     Color.fromRGBO(255, 115, 92, 1),
                //   ),
                //   shape: MaterialStateProperty.all(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                // ),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
          ),
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
                onPressed: () {},
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
  }
}
