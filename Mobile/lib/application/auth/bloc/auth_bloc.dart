import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../domain/auth/name.dart';
import '../../../domain/auth/password.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      if (event is SignedInEvent) {
        emit(Authenticated(event.name));
      } else if (event is LogoutEvent) {
        emit(Unauthenticated());
      }
    });
  }
}
