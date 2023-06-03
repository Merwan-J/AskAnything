import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/application/auth/bloc/auth_event.dart';
import 'package:askanything/application/auth/bloc/auth_state.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:askanything/infrastructure/auth/auth_repository.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'auth_bloc_test.mocks.dart';

// Create a mock for the AuthRepository
@GenerateMocks([
  AuthRepository,
])
void main() {
  late SharedPreferenceService sharedPreferenceService;
  late MockAuthRepository mockAuthRepository;
  late AuthBloc authBloc;

  group('AuthBloc', () {
    setUp(() {
      sharedPreferenceService = SharedPreferenceService();
      mockAuthRepository = MockAuthRepository();
      authBloc = AuthBloc(
          authRepository: mockAuthRepository,
          sharedPrefsService: sharedPreferenceService);
    });

    tearDown(() {
      authBloc.close();
    });

    blocTest<AuthBloc, AuthState>(
      'emits AuthUnauthenticated state after signing out',
      build: () => authBloc,
      act: (bloc) async => bloc.add(await AuthEventSignOut()),
      expect: () async => [await AuthUnauthenticated()],
    );
  });
}
