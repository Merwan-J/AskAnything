import 'package:askanything/domain/auth/change_password_form.dart';
import 'package:askanything/infrastructure/auth/change_password_form_dto.dart';

extension ChangePasswordFormMapper on ChangePasswordForm {
  ChangePasswordFormDto toDto() {
    return ChangePasswordFormDto(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );
  }
}
