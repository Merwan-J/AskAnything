import 'package:askanything/infrastructure/auth/signup_form_dto.dart';

import '../../domain/auth/signup_form.dart';

extension SignUpFormMapper on SignUpForm {
  SignUpFormDto toDto() => SignUpFormDto(
        name: name,
        emailAddress: emailAddress,
        password: password,
        confirmPassword: confirmPassword,
      );
}
