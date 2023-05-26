import 'package:askanything/domain/auth/auth_failure.dart';
import 'package:askanything/domain/auth/change_password_form.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'change_password_event.dart';
import 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  final IAuthRepository _authRepository;

  ChangePasswordBloc(this._authRepository)
      : super(ChangePasswordState.initial()) {
    on<PasswordSubmitted>(
      ChangePasswordEvent event,
      Emitter<ChangePasswordState> emit,
    ) async {
      emit(ChangePasswordState.loading());

      final changePasswordForm = ChangePasswordForm(
        name: event.name,
        oldPassword: event.oldPassword,
        newPassword: event.newPassword,
        confirmPassword: event.confirmPassword,
      );

      final Either<AuthFailure, Unit> result =
          await _authRepository.changePassword(
        changePasswordForm: changePasswordForm,
      );

      result.fold(
        (failure) => emit(ChangePasswordState.error(failure)),
        (_) => emit(ChangePasswordState.success()),
      );
    }
  }
}



// import 'package:askanything/domain/auth/auth_failure.dart';
// import 'package:askanything/domain/auth/change_password_form.dart';
// import 'package:askanything/domain/auth/auth_repository_interface.dart';
// import 'package:bloc/bloc.dart';
// import 'package:dartz/dartz.dart';

// import 'change_password_event.dart';
// import 'change_password_state.dart';

// class ChangePasswordBloc
//     extends Bloc<ChangePasswordEvent, ChangePasswordState> {
//   final IAuthRepository _authRepository;

//   ChangePasswordBloc(this._authRepository)
//       : super(ChangePasswordState.initial());

//   @override
//   Stream<ChangePasswordState> mapEventToState(
//       ChangePasswordEvent event) async* {
//     yield* event.map(
//       passwordSubmitted: (e) async* {
//         yield ChangePasswordState.loading();
//         final changePasswordForm = ChangePasswordForm(
//           name: e.name,
//           oldPassword: e.oldPassword,
//           newPassword: e.newPassword,
//           confirmPassword: e.confirmPassword,
//         );
//         final Either<AuthFailure, Unit> failureOrSuccess = await _authRepository
//             .changePassword(changePasswordForm: changePasswordForm);
//         yield failureOrSuccess.fold(
//           (failure) => ChangePasswordState.error(failure),
//           (_) => ChangePasswordState.success(),
//         );
//       },
//     );
//   }
// }
