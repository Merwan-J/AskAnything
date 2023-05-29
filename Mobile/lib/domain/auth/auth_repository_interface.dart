import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/auth/signup_form.dart';
import 'package:askanything/infrastructure/auth/auth_response_dto.dart';
import 'package:dartz/dartz.dart';
import '../user/user.dart';
import 'change_password_form.dart';
import 'login_form.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, Unit>> signup({required SignUpForm signUpForm});

  Future<Either<AuthFailure, AuthResponseDto>> login(
      {required LoginForm loginForm});

  Future<dynamic> changePassword(
      {required ChangePasswordForm changePasswordForm});

  Future<String?> getAuthToken();

  Future<User?> getAuthenticatedUser();

  User? getAuthenticatedUserSync();

  Future<void> logout();
}
