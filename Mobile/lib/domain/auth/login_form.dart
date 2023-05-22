import 'package:askanything/domain/auth/email.dart';
import 'package:askanything/domain/auth/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_form.freezed.dart';

@freezed
class LoginForm with _$LoginForm {
  const factory LoginForm({
    required EmailAddress emailAddress,
    required Password password,
  }) = _LoginForm;
}