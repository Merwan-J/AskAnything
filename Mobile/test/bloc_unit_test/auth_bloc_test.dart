import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/application/auth/bloc/auth_bloc.dart';
import 'package:askanything/application/auth/bloc/auth_event.dart';
import 'package:askanything/application/auth/bloc/auth_state.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// Create a mock for the AuthRepository
class MockAuthRepository extends Mock implements IAuthRepository {}

// Create a mock for the SharedPreferenceService
class MockSharedPreferenceService extends Mock
    implements SharedPreferenceService {}

void main() {
  group('AuthBloc', () {
    late IAuthRepository authRepository;
    late SharedPreferenceService sharedPrefsService;
    late AuthBloc authBloc;

    setUp(() {
      authRepository = MockAuthRepository();
      sharedPrefsService = MockSharedPreferenceService();
      authBloc = AuthBloc(
        authRepository: authRepository,
        sharedPrefsService: sharedPrefsService,
      );
    });

    tearDown(() {
      authBloc.close();
    });

    test('initial state is AuthUnInitialized', () async {
      expect(await authBloc.state, const AuthUnInitialized());
    });

    // blocTest<AuthBloc, AuthState>(
    //   'emits AppInitialized state after initialization',
    //   build: () => authBloc,
    //   act: (bloc) => bloc.add(const AuthEventInitialized()),
    //   expect: () => [
    //     const AppInitialized(token: null, isFirstRun: true),
    //   ],
    // );

    blocTest<AuthBloc, AuthState>(
      'emits AuthAuthenticated state after signing in',
      build: () => authBloc,
      act: (bloc) {
        bloc.add(AuthEventSignedIn(
          {'user': 'John Doe'},
          'dummy_token',
        ));
      },
      expect: () => [
        AuthAuthenticated({'user': 'John Doe'}, 'dummy_token'),
      ],
    );

    blocTest<AuthBloc, AuthState>(
      'emits AuthUnauthenticated state after signing out',
      build: () => authBloc,
      act: (bloc) async => bloc.add(await AuthEventSignOut()),
      expect: () async => [await AuthUnauthenticated()],
    );
  });
}
