import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';

class ChangePasswordForm {
  final String oldPassword;
  final String newPassword;
  final String confirmPassword;

  ChangePasswordForm({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });
}
