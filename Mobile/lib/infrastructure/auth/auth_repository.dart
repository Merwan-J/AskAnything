// import 'dart:developer' as developer;
// import 'dart:io';

// import 'package:askanything/domain/auth/auth_repository_interface.dart';
// import 'package:askanything/domain/auth/signup_form.dart';
// import 'package:askanything/infrastructure/auth/sign_up_form_mapper.dart';
// import 'package:askanything/infrastructure/user/user_dto.dart';
// import 'package:dartz/dartz.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../domain/user/user.dart';
// import 'auth_api.dart';

// class AuthRepository implements IAuthRepository {
//   AuthApi authApi;
//   SharedPreferences sharedPreferences;
//   User? _authenticatedUser;

//   AuthRepository(this.authApi, this.sharedPreferences);

//   @override
//   Future<Either<User>> signup({required SignUpForm signUpForm}) async {
//     UserDTO user = await authApi.signup(signupForm: signUpForm.toDto());
//     return Either(val: user.toUser());
//   }

//   @override
//   Future<Either<LoginReponse>> login({required LoginForm loginForm}) async {
//     try {
//       AuthResponseDto response = await authApi.login(
//           username: loginForm.userName.value,
//           password: loginForm.password.value);
//       await sharedPrefsService.setJwtToken(response.jwt);
//       await sharedPrefsService.setAuthenticatedUser(response.user.toUser());

//       _authenticatedUser = response.user.toUser();
//       return Either(
//           val: LoginReponse(
//         jwt: response.jwt,
//         user: response.user.toUser(),
//       ));
//     } on QHttpException catch (e) {
//       return Either(error: Error(e.message));
//     } on SocketException catch (_) {
//       return Either(error: Error("Check your internet connection"));
//     } on Exception catch (e) {
//       developer.log("Unexpected error while logging in user in Auth Repo",
//           error: e);
//       return Either(error: Error("Unknown error"));
//     }
//   }

//   @override
//   Future<Either<void>> changePassword(
//       {required ChangePasswordForm changePasswordForm}) async {
//     try {
//       await authApi.changePassword(changePasswordForm);
//       return Either(val: null);
//     } on QHttpException catch (e) {
//       return Either(error: Error(e.message));
//     } on SocketException catch (_) {
//       return Either(error: Error("Check your internet connection"));
//     } on Exception catch (e) {
//       developer.log("Unexpected error while logging in user in Auth Repo",
//           error: e);
//       return Either(error: Error("Unknown error"));
//     }
//   }

//   @override
//   Future<String?> getAuthToken() {
//     return sharedPrefsService.getToken();
//   }

//   @override
//   Future<void> logout() async {
//     await sharedPrefsService.removeToken();
//     await sharedPrefsService.removeAuthenticatedUser();
//     _authenticatedUser = null;
//   }

//   @override
//   Future<User?> getAuthenticatedUser() async {
//     _authenticatedUser = await sharedPrefsService.getAuthenticatedUser();
//     return _authenticatedUser;
//   }

//   @override
//   User? getAuthenticatedUserSync() {
//     return _authenticatedUser;
//   }
// }
