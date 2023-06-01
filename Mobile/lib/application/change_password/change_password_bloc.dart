import 'package:askanything/application/change_password/change_password_event.dart';
import 'package:askanything/application/change_password/change_password_state.dart';
import 'package:askanything/domain/auth/change_password_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/auth/auth_repository_interface.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IAuthRepository _authRepository;

  ChangePasswordBloc(this._authRepository)
      : super(const ChangePasswordState.initial()) {
    on<ChangePasswordEvent>(((event, emit) async {
      emit(const ChangePasswordState.loading());
      print("before change password bloc");
      var form = ChangePasswordForm(
          oldPassword: event.oldPassword,
          newPassword: event.newPassword,
          confirmPassword: event.confirmPassword);

      var result =
          await _authRepository.changePassword(changePasswordForm: form);
      print("bloc success");
      print(result.toString());
      if (result.isLeft()) {
        print("bloc error");
        emit(ChangePasswordState.error(result.error!));
      } else {
        print("bloc success 2");
        emit(const ChangePasswordState.success());
      }
    }));
  }
}
