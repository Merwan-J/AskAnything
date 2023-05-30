import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart';
import 'package:askanything/domain/auth/auth_repository_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/name.dart';
import '../../../domain/auth/password.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository authRepository;
  final SharedPreferenceService sharedPrefsService;
  AuthBloc({required this.authRepository, required this.sharedPrefsService})
      : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      if (event is SignedInEvent) {
        emit(Authenticated(event.name));
      } else if (event is LogoutEvent) {
        emit(Unauthenticated());
      }
    });
  }
}
