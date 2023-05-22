import 'package:askanything/domain/auth/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_form.freezed.dart';

@freezed
class ChangePasswordForm with _$ChangePasswordForm {
  factory ChangePasswordForm({
    required Password currentPassword,
    required Password newPassword,
  }) = _ChangePasswordForm;
}