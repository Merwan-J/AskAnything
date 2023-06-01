import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:askanything/domain/auth/change_password_form.dart';

class ChangePasswordEvent {
  final String oldPassword;
  final String newPassword;
  final String confirmPassword;

  ChangePasswordEvent({
    required this.oldPassword,
    required this.newPassword,
    required this.confirmPassword,
  });

  static ChangePasswordEvent passwordSubmitted({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) {
    return ChangePasswordEvent(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );
  }
}
