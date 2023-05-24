import 'dart:ffi';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/domain/auth/signup_form.dart';
import 'package:askanything/infrastructure/auth/auth_response_dto.dart';
import 'package:askanything/infrastructure/auth/sign_up_form_mapper.dart';
import 'package:askanything/infrastructure/user/user_dto.dart';
import 'package:askanything/infrastructure/user/user_mapper.dart';
import 'package:dartz/dartz.dart';
import '../../Data/Local/Shared_prefs/shared_pref_service.dart';
import '../../domain/auth/change_password_form.dart';
import '../../domain/auth/login_form.dart';
import '../../domain/user/user.dart';
import 'auth_api.dart';

class AuthRepository implements IAuthRepository {
  AuthApi authApi;
  SharedPreferenceService sharedPreferences;
  User? _authenticatedUser;

  AuthRepository(this.authApi, this.sharedPreferences);

  @override
  Future<Either<User, User>> signup({required SignUpForm signUpForm}) async {
    UserDTO user = await authApi.signup(signupForm: signUpForm.toDto());
    return Right(user.toModel());
  }

  @override
  Future<Either<User, User?>> login({required LoginForm loginForm}) async {
    AuthResponseDto response = await authApi.login(
      username: loginForm.emailAddress.email,
      password: loginForm.password.password,
    );
    await sharedPreferences.setJwtToken(response.accessToken);
    await sharedPreferences.setAuthenticatedUser(response.user.toModel());

    _authenticatedUser = response.user.toModel();
    return Right(_authenticatedUser);
  }

  @override
  Future<Either<Error, User>> changePassword(
      {required ChangePasswordForm changePasswordForm}) async {
    User user =
        await authApi.changePassword(changePassword: changePasswordForm);
    return Right(user);
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
