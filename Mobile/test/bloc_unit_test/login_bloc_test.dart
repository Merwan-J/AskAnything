// import 'package:askanything/application/login/bloc/login_bloc.dart';
// import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
// import 'package:askanything/infrastructure/auth/auth_repository.dart';
// import 'package:bloc_test/bloc_test.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// @GenerateMocks([UserApi])
// void main() {}
// class MockAuthRepository extends Mock implements AuthRepository {}
// class MockSharedPreferenceService extends Mock
//     implements SharedPreferenceService {}

// // class LoginBloc extends Bloc<LoginEvent, LoginState> {
// //   late final CustomHttpClient _customHttpClient;
// //   late final AuthApi _authApi;
// //   late final IAuthRepository _authRepository;
// //   late final SharedPreferenceService _sharedPreferenceService;

// void main() {
//   group('LoginBloc', () {
//     late MockAuthRepository authRepository;
//     late LoginBloc loginBloc;

//     setUp(() {
//       authRepository = MockAuthRepository();
//       loginBloc = LoginBloc(authRepository);
//     });

//     tearDown(() {
//       loginBloc.close();
//     });

//   test('initial state is correct', () => expect(loginBloc.state, equals(LoginState.initial())));

//     blocTest<LoginBloc, LoginState>(
//       'emits [emailAddress updated] when EmailChanged is added',
//       build: () => loginBloc,
//       act: (bloc) => bloc.add(LoginEvent.emailChanged('test@example.com')),
//       expect: () => [
//         LoginState.initial().copyWith(
//           emailAddress: 'test@example.com',
//           authFailureOrSuccessOption: none(),
//         ),
//       ],
//     );

//     blocTest<LoginBloc, LoginState>(
//       'emits [password updated] when PasswordChanged is added',
//       build: () => loginBloc,
//       act: (bloc) => bloc.add(LoginEvent.passwordChanged('password123')),
//       expect: () => [
//         LoginState.initial().copyWith(
//           password: 'password123',
//           authFailureOrSuccessOption: none(),
//         ),
//       ],
//     );

//     blocTest<LoginBloc, LoginState>(
//       'emits [isOrganizer updated] when IsOrganizerChanged is added',
//       build: () => loginBloc,
//       act: (bloc) => bloc.add(LoginEvent.isOrganizerChanged(true)),
//       expect: () => [
//         LoginState.initial().copyWith(
//           isOrganizer: true,
//           authFailureOrSuccessOption: none(),
//         ),
//       ],
//     );

//     blocTest<LoginBloc, LoginState>(
//       'emits [isSubmitting, authFailureOrSuccessOption] when LoginPressed is added and authentication is successful',
//       build: () {
//         when(authRepository.loginUser(UserLoginModel(email:"test@example.com", password:"password123")
//         )).thenAnswer((_) async => right('success'),);
//         return loginBloc;
//       },
//       act: (bloc) => bloc.add(LoginEvent.loginPressed()),
//       expect: () => [
//         LoginState.initial().copyWith(
//           isSubmitting: true,
//           authFailureOrSuccessOption: some(right('success')),
//         ),
//       ],
//     );

//     blocTest<LoginBloc, LoginState>(
//       'emits [isSubmitting, authFailureOrSuccessOption] when LoginPressed is added and authentication fails',
//       build: () {
//         when(() => authRepository.loginUser(UserLoginModel(email:"test@example.com", password:"password123"))).thenAnswer(
//           (_) async => left(const AuthFailure.invalidEmailAndPasswordCombination() as Either<AuthFailure, Object>)
//         );
//         return loginBloc;
//       },
//       act: (bloc) => bloc.add(LoginEvent.loginPressed()),
//       expect: () => [
//         LoginState.initial().copyWith(
//           isSubmitting: true,
//           authFailureOrSuccessOption:
//               some(left(const AuthFailure.invalidEmailAndPasswordCombination())),
//         ),
//       ],
//     );
//   });
// }