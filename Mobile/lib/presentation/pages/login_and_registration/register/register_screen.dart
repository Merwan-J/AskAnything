
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool passwordVisible = false;
  bool confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
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
                      borderRadius: BorderRadius.circular(15),
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
                child: const Text(
                  'Hey! Register to get started',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Color.fromARGB(160, 238, 238, 238),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       color: Color.fromARGB(199, 158, 158, 158), width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    hintText: 'Name',
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Color.fromARGB(160, 238, 238, 238),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       color: Color.fromARGB(199, 158, 158, 158), width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    hintText: 'Email',
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  decoration: InputDecoration(
                    // filled: true,
                    // fillColor: Color.fromARGB(160, 238, 238, 238),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       color: Color.fromARGB(199, 158, 158, 158), width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    hintText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        // color: Colors.grey[800],
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
                height: 15.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    // fillColor: Color.fromARGB(160, 238, 238, 238),
                    // focusedBorder: OutlineInputBorder(
                    //   borderSide: const BorderSide(color: Colors.black, width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    // border: OutlineInputBorder(
                    //   borderSide: const BorderSide(
                    //       color: Color.fromARGB(199, 158, 158, 158), width: 2.0),
                    //   borderRadius: BorderRadius.circular(10),
                    // ),
                    hintText: 'Confirm password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        confirmPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        // color: Colors.grey[800],
                      ),
                      onPressed: () {
                        setState(() {
                          confirmPasswordVisible = !confirmPasswordVisible;
                        });
                      },
                    ),
                  ),
                  obscureText: !confirmPasswordVisible,
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
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(255, 115, 92, 1),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge!.fontSize),
                    ),
                  ),
                ),
              ),
              // Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login Now',
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
        ),
      ),
    );
  }
}