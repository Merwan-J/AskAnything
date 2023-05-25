import 'package:askanything/domain/auth/signup_form.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_event.freezed.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const SignUpEvent._();

  const factory SignUpEvent.register(SignUpForm form) = SignUpEventRegister;
}
