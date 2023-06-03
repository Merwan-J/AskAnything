import 'dart:ffi';
import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/domain/auth/signup_form.dart';
import 'package:askanything/infrastructure/auth/auth_response_dto.dart';
import 'package:askanything/infrastructure/auth/change_password_form_mapper.dart';
import 'package:askanything/infrastructure/auth/sign_up_form_mapper.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:dartz/dartz.dart';
import '../../Data/Local/Shared_prefs/shared_pref_service.dart';
import '../../domain/auth/change_password_form.dart';
import '../../domain/auth/login_form.dart';
import '../../domain/user/user.dart';
import '../user/user_mapper.dart';
import 'auth_api.dart';

class AuthRepository implements IAuthRepository {
  AuthApi authApi;
  SharedPreferenceService sharedPreferences;
  User? _authenticatedUser;

  AuthRepository(this.authApi, this.sharedPreferences);

  @override
  Future<Either<AuthFailure, Unit>> signup(
      {required SignUpForm signUpForm}) async {
    try {
      await authApi.signup(signupForm: signUpForm.toDto());
      return right(unit);
    } catch (e) {
      print(e);
      print('excpetion in repo');
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, AuthResponseDto>> login(
      {required LoginForm loginForm}) async {
    try {
      print('before response');
      AuthResponseDto response = await authApi.login(
        email: loginForm.emailAddress,
        password: loginForm.password,
      );

      print('after response');
      print(response);

      await sharedPreferences.setJwtToken(response.accessToken);
      await sharedPreferences.setAuthenticatedUser(response.user);

      _authenticatedUser = await getAuthenticatedUser();

      return Right(response);
    } catch (e) {
      print(e);
      print('in repo');
      return left(const AuthFailure.serverError());
    }
  }

  // @override
  // Future<Either<AuthFailure, User>> changePassword(
  //     {required ChangePasswordForm changePasswordForm}) async {
  //   try {
  //     print("before change password repo");
  //     User user = await authApi.changePassword(
  //         changePassword: changePasswordForm, userId: _authenticatedUser!.id);
  //     print("after change password repo");
  //     return Right(user);
  //   } on Exception catch (e) {
  //     return left(const AuthFailure.serverError());
  //   }
  // }
  @override
  Future<Either<AuthFailure, User>> changePassword(
      {required ChangePasswordForm changePasswordForm}) async {
    try {
      // if (_authenticatedUser == null) {
      //   return left(const AuthFailure.serverError());
      // }
      print("before change password repo");
      User user =
          await authApi.changePassword(changePassword: changePasswordForm);
      print("after change password repo");
      return Right(user);
    } on Exception catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<String?> getAuthToken() {
    return sharedPreferences.getToken();
  }

  @override
  Future<void> logout() async {
    await sharedPreferences.removeToken();
    await sharedPreferences.removeAuthenticatedUser();
    _authenticatedUser = null;
  }

  @override
  Future<User?> getAuthenticatedUser() async {
    _authenticatedUser = await sharedPreferences.getAuthenticatedUser();
    return _authenticatedUser;
  }

  @override
  User? getAuthenticatedUserSync() {
    return _authenticatedUser;
  }
}
