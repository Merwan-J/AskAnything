import 'package:askanything/domain/auth/email.dart';
import 'package:askanything/domain/auth/name.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_form.freezed.dart';

@freezed
class SignUpForm with _$SignUpForm {
  const factory SignUpForm({
    required String name,
    required String emailAddress,
    required String password,
    required String confirmPassword,
  }) = _SignUpForm;
}
