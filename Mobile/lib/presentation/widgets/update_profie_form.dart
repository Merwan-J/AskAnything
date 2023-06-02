import 'dart:io';

import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/application/change_password/change_password_bloc.dart'
    as change_password;
import 'package:askanything/application/change_password/change_password_event.dart'
    as change_password;
import 'package:askanything/application/change_password/change_password_state.dart';
import 'package:askanything/application/profile/bloc/profile_bloc.dart';
import 'package:askanything/application/profile/bloc/profile_event.dart';
import 'package:askanything/application/profile/bloc/profile_state.dart';
import 'package:askanything/infrastructure/auth/auth_api.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:askanything/util/constants.dart';
import 'package:askanything/util/custom_color.dart';
import 'package:askanything/util/custom_http_client.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateProfileForm extends StatefulWidget {
  const UpdateProfileForm({Key? key});

  @override
  State<UpdateProfileForm> createState() => _UpdateProfileFormState();
}

class _UpdateProfileFormState extends State<UpdateProfileForm> {
  // final _formKey = GlobalKey<FormState>();
  final TextEditingController _oldPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<change_password.ChangePasswordBloc>(
      create: (context) => change_password.ChangePasswordBloc(
        AuthRepository(
          AuthApi(CustomHttpClient()),
          SharedPreferenceService(),
        ),
      ),
      child:
          BlocConsumer<change_password.ChangePasswordBloc, ChangePasswordState>(
        listener: (context, state) {
          // TODO: implement listener
          if (state is Success) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Password changed successfully')),
            );
            Navigator.of(context).pop();
          } else if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.failure.toString())),
            );
          }
        },
        builder: (context, state) {
          return DraggableScrollableSheet(
            expand: false,
            initialChildSize: 0.8,
            minChildSize: 0.3,
            // maxChildSize: 0.9,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: [
                    Positioned(
                      top: 7,
                      child: Container(
                        height: 5.h,
                        width: 60.h,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: 30.h,
                        right: 20.h,
                        left: 20.h,
                        // ),
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                      ),
                      // height: MediaQuery.of(context).size.height * 0.8,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            // key: _formKey,
                            controller: _oldPasswordController,
                            decoration: InputDecoration(
                              labelText: 'Old Password',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your old password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          TextFormField(
                            controller: _newPasswordController,
                            decoration: InputDecoration(
                              labelText: 'New Password',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a new password';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 16.h),
                          TextFormField(
                            controller: _confirmPasswordController,
                            decoration: InputDecoration(
                              labelText: 'Confirm New Password',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your new password';
                              }
                              if (value != _newPasswordController.text) {
                                return 'Passwords do not match';
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 24.h),
                          Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () {
                                // if (_formKey.currentState!.validate()) {
                                //   final oldPassword =
                                //       _oldPasswordController.text;
                                //   final newPassword =
                                //       _newPasswordController.text;
                                //   final confirmPassword =
                                //       _confirmPasswordController.text;

                                BlocProvider.of<
                                        change_password
                                            .ChangePasswordBloc>(context)
                                    .add(
                                  change_password.ChangePasswordEvent
                                      .passwordSubmitted(
                                    oldPassword: _oldPasswordController.text,
                                    newPassword: _newPasswordController.text,
                                    confirmPassword:
                                        _confirmPasswordController.text,
                                  ),
                                );
                              },
                              child: Text('Confirm'),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
