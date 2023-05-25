import 'package:askanything/domain/auth/signup_form.dart';
import '../user/user.dart';
import 'change_password_form.dart';
import 'login_form.dart';

abstract class IAuthRepository {
  Future<dynamic> signup({required SignUpForm signUpForm});

  Future<dynamic> login({required LoginForm loginForm});

  Future<dynamic> changePassword(
      {required ChangePasswordForm changePasswordForm});

  Future<String?> getAuthToken();

  Future<User?> getAuthenticatedUser();

  User? getAuthenticatedUserSync();

  Future<void> logout();
}
