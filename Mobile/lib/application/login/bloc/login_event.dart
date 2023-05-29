import 'package:askanything/domain/auth/login_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const LoginEvent._();

  const factory LoginEvent.login(LoginForm form) = LoginEventLogin;
}
