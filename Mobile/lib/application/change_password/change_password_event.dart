import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:askanything/domain/auth/change_password_form.dart';

part 'change_password_event.freezed.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.passwordSubmitted({
    required Name name,
    required Password oldPassword,
    required Password newPassword,
    required Password confirmPassword,
  }) = PasswordSubmitted;
}
