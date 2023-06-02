// Mocks generated by Mockito 5.4.1 from annotations
// in askanything/test/infrastructure/user/user_repository_test.dart.
// Do not manually edit this file.

// @dart=2.19

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:askanything/infrastructure/user/user_api.dart' as _i3;
import 'package:askanything/infrastructure/user/user_dto.dart' as _i2;
import 'package:askanything/infrastructure/user/user_form_dto.dart' as _i5;
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

class _FakeUserDTO_0 extends _i1.SmartFake implements _i2.UserDTO {
  _FakeUserDTO_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [UserApi].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserApi extends _i1.Mock implements _i3.UserApi {
  MockUserApi() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.UserDTO> createUser(_i5.UserFormDTO? userFormDto) =>
      (super.noSuchMethod(
        Invocation.method(
          #createUser,
          [userFormDto],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #createUser,
            [userFormDto],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
  @override
  _i4.Future<_i2.UserDTO> getUserById(String? id) => (super.noSuchMethod(
        Invocation.method(
          #getUserById,
          [id],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #getUserById,
            [id],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
  @override
  _i4.Future<_i2.UserDTO> updateUser(
    _i5.UserFormDTO? userFormDto,
    String? userId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateUser,
          [
            userFormDto,
            userId,
          ],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #updateUser,
            [
              userFormDto,
              userId,
            ],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
  @override
  _i4.Future<void> deleteUser(String? id) => (super.noSuchMethod(
        Invocation.method(
          #deleteUser,
          [id],
        ),
        returnValue: _i4.Future<void>.value(),
        returnValueForMissingStub: _i4.Future<void>.value(),
      ) as _i4.Future<void>);
  @override
  _i4.Future<List<_i2.UserDTO>> getUsers() => (super.noSuchMethod(
        Invocation.method(
          #getUsers,
          [],
        ),
        returnValue: _i4.Future<List<_i2.UserDTO>>.value(<_i2.UserDTO>[]),
      ) as _i4.Future<List<_i2.UserDTO>>);
  @override
  _i4.Future<_i2.UserDTO> followUser(
    String? followerId,
    String? followingId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #followUser,
          [
            followerId,
            followingId,
          ],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #followUser,
            [
              followerId,
              followingId,
            ],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
  @override
  _i4.Future<_i2.UserDTO> unfollowUser(
    String? followerId,
    String? followingId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #unfollowUser,
          [
            followerId,
            followingId,
          ],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #unfollowUser,
            [
              followerId,
              followingId,
            ],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
  @override
  _i4.Future<List<_i2.UserDTO>> getFollowers(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFollowers,
          [userId],
        ),
        returnValue: _i4.Future<List<_i2.UserDTO>>.value(<_i2.UserDTO>[]),
      ) as _i4.Future<List<_i2.UserDTO>>);
  @override
  _i4.Future<List<_i2.UserDTO>> getFollowings(String? userId) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFollowings,
          [userId],
        ),
        returnValue: _i4.Future<List<_i2.UserDTO>>.value(<_i2.UserDTO>[]),
      ) as _i4.Future<List<_i2.UserDTO>>);
  @override
  _i4.Future<List<_i2.UserDTO>> getAdminUsers() => (super.noSuchMethod(
        Invocation.method(
          #getAdminUsers,
          [],
        ),
        returnValue: _i4.Future<List<_i2.UserDTO>>.value(<_i2.UserDTO>[]),
      ) as _i4.Future<List<_i2.UserDTO>>);
  @override
  _i4.Future<_i2.UserDTO> addBookmark(
    String? userId,
    String? questionId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #addBookmark,
          [
            userId,
            questionId,
          ],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #addBookmark,
            [
              userId,
              questionId,
            ],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
  @override
  _i4.Future<_i2.UserDTO> removeBookmark(
    String? userId,
    String? questionId,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #removeBookmark,
          [
            userId,
            questionId,
          ],
        ),
        returnValue: _i4.Future<_i2.UserDTO>.value(_FakeUserDTO_0(
          this,
          Invocation.method(
            #removeBookmark,
            [
              userId,
              questionId,
            ],
          ),
        )),
      ) as _i4.Future<_i2.UserDTO>);
}
