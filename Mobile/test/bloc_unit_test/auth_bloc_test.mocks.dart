// Mocks generated by Mockito 5.4.0 from annotations
// in askanything/test/bloc_unit_test/auth_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:askanything/Data/Local/Shared_prefs/shared_pref_service.dart'
    as _i3;
import 'package:askanything/domain/auth/auth_failure.dart' as _i7;
import 'package:askanything/domain/auth/change_password_form.dart' as _i12;
import 'package:askanything/domain/auth/login_form.dart' as _i10;
import 'package:askanything/domain/auth/signup_form.dart' as _i8;
import 'package:askanything/domain/user/user.dart' as _i11;
import 'package:askanything/infrastructure/auth/auth_api.dart' as _i2;
import 'package:askanything/infrastructure/auth/auth_repository.dart' as _i5;
import 'package:askanything/infrastructure/auth/auth_response_dto.dart' as _i9;
import 'package:dartz/dartz.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAuthApi_0 extends _i1.SmartFake implements _i2.AuthApi {
  _FakeAuthApi_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeSharedPreferenceService_1 extends _i1.SmartFake
    implements _i3.SharedPreferenceService {
  _FakeSharedPreferenceService_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_2<L, R> extends _i1.SmartFake implements _i4.Either<L, R> {
  _FakeEither_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthRepository extends _i1.Mock implements _i5.AuthRepository {
  MockAuthRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AuthApi get authApi => (super.noSuchMethod(
        Invocation.getter(#authApi),
        returnValue: _FakeAuthApi_0(
          this,
          Invocation.getter(#authApi),
        ),
      ) as _i2.AuthApi);
  @override
  set authApi(_i2.AuthApi? _authApi) => super.noSuchMethod(
        Invocation.setter(
          #authApi,
          _authApi,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.SharedPreferenceService get sharedPreferences => (super.noSuchMethod(
        Invocation.getter(#sharedPreferences),
        returnValue: _FakeSharedPreferenceService_1(
          this,
          Invocation.getter(#sharedPreferences),
        ),
      ) as _i3.SharedPreferenceService);
  @override
  set sharedPreferences(_i3.SharedPreferenceService? _sharedPreferences) =>
      super.noSuchMethod(
        Invocation.setter(
          #sharedPreferences,
          _sharedPreferences,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i6.Future<_i4.Either<_i7.AuthFailure, _i4.Unit>> signup(
          {required _i8.SignUpForm? signUpForm}) =>
      (super.noSuchMethod(
        Invocation.method(
          #signup,
          [],
          {#signUpForm: signUpForm},
        ),
        returnValue: _i6.Future<_i4.Either<_i7.AuthFailure, _i4.Unit>>.value(
            _FakeEither_2<_i7.AuthFailure, _i4.Unit>(
          this,
          Invocation.method(
            #signup,
            [],
            {#signUpForm: signUpForm},
          ),
        )),
      ) as _i6.Future<_i4.Either<_i7.AuthFailure, _i4.Unit>>);
  @override
  _i6.Future<_i4.Either<_i7.AuthFailure, _i9.AuthResponseDto>> login(
          {required _i10.LoginForm? loginForm}) =>
      (super.noSuchMethod(
        Invocation.method(
          #login,
          [],
          {#loginForm: loginForm},
        ),
        returnValue:
            _i6.Future<_i4.Either<_i7.AuthFailure, _i9.AuthResponseDto>>.value(
                _FakeEither_2<_i7.AuthFailure, _i9.AuthResponseDto>(
          this,
          Invocation.method(
            #login,
            [],
            {#loginForm: loginForm},
          ),
        )),
      ) as _i6.Future<_i4.Either<_i7.AuthFailure, _i9.AuthResponseDto>>);
  @override
  _i6.Future<_i4.Either<_i7.AuthFailure, _i11.User>> changePassword(
          {required _i12.ChangePasswordForm? changePasswordForm}) =>
      (super.noSuchMethod(
        Invocation.method(
          #changePassword,
          [],
          {#changePasswordForm: changePasswordForm},
        ),
        returnValue: _i6.Future<_i4.Either<_i7.AuthFailure, _i11.User>>.value(
            _FakeEither_2<_i7.AuthFailure, _i11.User>(
          this,
          Invocation.method(
            #changePassword,
            [],
            {#changePasswordForm: changePasswordForm},
          ),
        )),
      ) as _i6.Future<_i4.Either<_i7.AuthFailure, _i11.User>>);
  @override
  _i6.Future<String?> getAuthToken() => (super.noSuchMethod(
        Invocation.method(
          #getAuthToken,
          [],
        ),
        returnValue: _i6.Future<String?>.value(),
      ) as _i6.Future<String?>);
  @override
  _i6.Future<void> logout() => (super.noSuchMethod(
        Invocation.method(
          #logout,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);
  @override
  _i6.Future<_i11.User?> getAuthenticatedUser() => (super.noSuchMethod(
        Invocation.method(
          #getAuthenticatedUser,
          [],
        ),
        returnValue: _i6.Future<_i11.User?>.value(),
      ) as _i6.Future<_i11.User?>);
}