// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetUserByIdCopyWith<$Res> {
  factory _$$GetUserByIdCopyWith(
          _$GetUserById value, $Res Function(_$GetUserById) then) =
      __$$GetUserByIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$GetUserByIdCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserById>
    implements _$$GetUserByIdCopyWith<$Res> {
  __$$GetUserByIdCopyWithImpl(
      _$GetUserById _value, $Res Function(_$GetUserById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetUserById(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUserById implements GetUserById {
  const _$GetUserById(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserEvent.getUserById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserById &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserByIdCopyWith<_$GetUserById> get copyWith =>
      __$$GetUserByIdCopyWithImpl<_$GetUserById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return getUserById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return getUserById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (getUserById != null) {
      return getUserById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return getUserById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return getUserById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (getUserById != null) {
      return getUserById(this);
    }
    return orElse();
  }
}

abstract class GetUserById implements UserEvent {
  const factory GetUserById(final String id) = _$GetUserById;

  String get id;
  @JsonKey(ignore: true)
  _$$GetUserByIdCopyWith<_$GetUserById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateUserCopyWith<$Res> {
  factory _$$CreateUserCopyWith(
          _$CreateUser value, $Res Function(_$CreateUser) then) =
      __$$CreateUserCopyWithImpl<$Res>;
  @useResult
  $Res call({UserForm userForm});

  $UserFormCopyWith<$Res> get userForm;
}

/// @nodoc
class __$$CreateUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$CreateUser>
    implements _$$CreateUserCopyWith<$Res> {
  __$$CreateUserCopyWithImpl(
      _$CreateUser _value, $Res Function(_$CreateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userForm = null,
  }) {
    return _then(_$CreateUser(
      null == userForm
          ? _value.userForm
          : userForm // ignore: cast_nullable_to_non_nullable
              as UserForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFormCopyWith<$Res> get userForm {
    return $UserFormCopyWith<$Res>(_value.userForm, (value) {
      return _then(_value.copyWith(userForm: value));
    });
  }
}

/// @nodoc

class _$CreateUser implements CreateUser {
  const _$CreateUser(this.userForm);

  @override
  final UserForm userForm;

  @override
  String toString() {
    return 'UserEvent.createUser(userForm: $userForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateUser &&
            (identical(other.userForm, userForm) ||
                other.userForm == userForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateUserCopyWith<_$CreateUser> get copyWith =>
      __$$CreateUserCopyWithImpl<_$CreateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return createUser(userForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return createUser?.call(userForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(userForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return createUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return createUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (createUser != null) {
      return createUser(this);
    }
    return orElse();
  }
}

abstract class CreateUser implements UserEvent {
  const factory CreateUser(final UserForm userForm) = _$CreateUser;

  UserForm get userForm;
  @JsonKey(ignore: true)
  _$$CreateUserCopyWith<_$CreateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUserCopyWith<$Res> {
  factory _$$UpdateUserCopyWith(
          _$UpdateUser value, $Res Function(_$UpdateUser) then) =
      __$$UpdateUserCopyWithImpl<$Res>;
  @useResult
  $Res call({UserForm userForm, String userId});

  $UserFormCopyWith<$Res> get userForm;
}

/// @nodoc
class __$$UpdateUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateUser>
    implements _$$UpdateUserCopyWith<$Res> {
  __$$UpdateUserCopyWithImpl(
      _$UpdateUser _value, $Res Function(_$UpdateUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userForm = null,
    Object? userId = null,
  }) {
    return _then(_$UpdateUser(
      null == userForm
          ? _value.userForm
          : userForm // ignore: cast_nullable_to_non_nullable
              as UserForm,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserFormCopyWith<$Res> get userForm {
    return $UserFormCopyWith<$Res>(_value.userForm, (value) {
      return _then(_value.copyWith(userForm: value));
    });
  }
}

/// @nodoc

class _$UpdateUser implements UpdateUser {
  const _$UpdateUser(this.userForm, this.userId);

  @override
  final UserForm userForm;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.updateUser(userForm: $userForm, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUser &&
            (identical(other.userForm, userForm) ||
                other.userForm == userForm) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userForm, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserCopyWith<_$UpdateUser> get copyWith =>
      __$$UpdateUserCopyWithImpl<_$UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return updateUser(userForm, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return updateUser?.call(userForm, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(userForm, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class UpdateUser implements UserEvent {
  const factory UpdateUser(final UserForm userForm, final String userId) =
      _$UpdateUser;

  UserForm get userForm;
  String get userId;
  @JsonKey(ignore: true)
  _$$UpdateUserCopyWith<_$UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteUserCopyWith<$Res> {
  factory _$$DeleteUserCopyWith(
          _$DeleteUser value, $Res Function(_$DeleteUser) then) =
      __$$DeleteUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DeleteUser>
    implements _$$DeleteUserCopyWith<$Res> {
  __$$DeleteUserCopyWithImpl(
      _$DeleteUser _value, $Res Function(_$DeleteUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteUser(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteUser implements DeleteUser {
  const _$DeleteUser(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserEvent.deleteUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUser &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUserCopyWith<_$DeleteUser> get copyWith =>
      __$$DeleteUserCopyWithImpl<_$DeleteUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return deleteUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return deleteUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return deleteUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return deleteUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (deleteUser != null) {
      return deleteUser(this);
    }
    return orElse();
  }
}

abstract class DeleteUser implements UserEvent {
  const factory DeleteUser(final String id) = _$DeleteUser;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteUserCopyWith<_$DeleteUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllUsersCopyWith<$Res> {
  factory _$$GetAllUsersCopyWith(
          _$GetAllUsers value, $Res Function(_$GetAllUsers) then) =
      __$$GetAllUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetAllUsers>
    implements _$$GetAllUsersCopyWith<$Res> {
  __$$GetAllUsersCopyWithImpl(
      _$GetAllUsers _value, $Res Function(_$GetAllUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllUsers implements GetAllUsers {
  const _$GetAllUsers();

  @override
  String toString() {
    return 'UserEvent.getAllUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return getAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class GetAllUsers implements UserEvent {
  const factory GetAllUsers() = _$GetAllUsers;
}

/// @nodoc
abstract class _$$FollowUserCopyWith<$Res> {
  factory _$$FollowUserCopyWith(
          _$FollowUser value, $Res Function(_$FollowUser) then) =
      __$$FollowUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String followerId, String followingId});
}

/// @nodoc
class __$$FollowUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$FollowUser>
    implements _$$FollowUserCopyWith<$Res> {
  __$$FollowUserCopyWithImpl(
      _$FollowUser _value, $Res Function(_$FollowUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerId = null,
    Object? followingId = null,
  }) {
    return _then(_$FollowUser(
      null == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == followingId
          ? _value.followingId
          : followingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FollowUser implements FollowUser {
  const _$FollowUser(this.followerId, this.followingId);

  @override
  final String followerId;
  @override
  final String followingId;

  @override
  String toString() {
    return 'UserEvent.followUser(followerId: $followerId, followingId: $followingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FollowUser &&
            (identical(other.followerId, followerId) ||
                other.followerId == followerId) &&
            (identical(other.followingId, followingId) ||
                other.followingId == followingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followerId, followingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FollowUserCopyWith<_$FollowUser> get copyWith =>
      __$$FollowUserCopyWithImpl<_$FollowUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return followUser(followerId, followingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return followUser?.call(followerId, followingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(followerId, followingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return followUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(this);
    }
    return orElse();
  }
}

abstract class FollowUser implements UserEvent {
  const factory FollowUser(final String followerId, final String followingId) =
      _$FollowUser;

  String get followerId;
  String get followingId;
  @JsonKey(ignore: true)
  _$$FollowUserCopyWith<_$FollowUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnfollowUserCopyWith<$Res> {
  factory _$$UnfollowUserCopyWith(
          _$UnfollowUser value, $Res Function(_$UnfollowUser) then) =
      __$$UnfollowUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String followerId, String followingId});
}

/// @nodoc
class __$$UnfollowUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UnfollowUser>
    implements _$$UnfollowUserCopyWith<$Res> {
  __$$UnfollowUserCopyWithImpl(
      _$UnfollowUser _value, $Res Function(_$UnfollowUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? followerId = null,
    Object? followingId = null,
  }) {
    return _then(_$UnfollowUser(
      null == followerId
          ? _value.followerId
          : followerId // ignore: cast_nullable_to_non_nullable
              as String,
      null == followingId
          ? _value.followingId
          : followingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnfollowUser implements UnfollowUser {
  const _$UnfollowUser(this.followerId, this.followingId);

  @override
  final String followerId;
  @override
  final String followingId;

  @override
  String toString() {
    return 'UserEvent.unfollowUser(followerId: $followerId, followingId: $followingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnfollowUser &&
            (identical(other.followerId, followerId) ||
                other.followerId == followerId) &&
            (identical(other.followingId, followingId) ||
                other.followingId == followingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, followerId, followingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnfollowUserCopyWith<_$UnfollowUser> get copyWith =>
      __$$UnfollowUserCopyWithImpl<_$UnfollowUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return unfollowUser(followerId, followingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return unfollowUser?.call(followerId, followingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (unfollowUser != null) {
      return unfollowUser(followerId, followingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return unfollowUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return unfollowUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (unfollowUser != null) {
      return unfollowUser(this);
    }
    return orElse();
  }
}

abstract class UnfollowUser implements UserEvent {
  const factory UnfollowUser(
      final String followerId, final String followingId) = _$UnfollowUser;

  String get followerId;
  String get followingId;
  @JsonKey(ignore: true)
  _$$UnfollowUserCopyWith<_$UnfollowUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFollowersCopyWith<$Res> {
  factory _$$GetFollowersCopyWith(
          _$GetFollowers value, $Res Function(_$GetFollowers) then) =
      __$$GetFollowersCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetFollowersCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetFollowers>
    implements _$$GetFollowersCopyWith<$Res> {
  __$$GetFollowersCopyWithImpl(
      _$GetFollowers _value, $Res Function(_$GetFollowers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetFollowers(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFollowers implements GetFollowers {
  const _$GetFollowers(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.getFollowers(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFollowers &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFollowersCopyWith<_$GetFollowers> get copyWith =>
      __$$GetFollowersCopyWithImpl<_$GetFollowers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return getFollowers(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return getFollowers?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (getFollowers != null) {
      return getFollowers(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return getFollowers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return getFollowers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (getFollowers != null) {
      return getFollowers(this);
    }
    return orElse();
  }
}

abstract class GetFollowers implements UserEvent {
  const factory GetFollowers(final String userId) = _$GetFollowers;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetFollowersCopyWith<_$GetFollowers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFollowingsCopyWith<$Res> {
  factory _$$GetFollowingsCopyWith(
          _$GetFollowings value, $Res Function(_$GetFollowings) then) =
      __$$GetFollowingsCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetFollowingsCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetFollowings>
    implements _$$GetFollowingsCopyWith<$Res> {
  __$$GetFollowingsCopyWithImpl(
      _$GetFollowings _value, $Res Function(_$GetFollowings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetFollowings(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFollowings implements GetFollowings {
  const _$GetFollowings(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.getFollowings(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFollowings &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFollowingsCopyWith<_$GetFollowings> get copyWith =>
      __$$GetFollowingsCopyWithImpl<_$GetFollowings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) getUserById,
    required TResult Function(UserForm userForm) createUser,
    required TResult Function(UserForm userForm, String userId) updateUser,
    required TResult Function(String id) deleteUser,
    required TResult Function() getAllUsers,
    required TResult Function(String followerId, String followingId) followUser,
    required TResult Function(String followerId, String followingId)
        unfollowUser,
    required TResult Function(String userId) getFollowers,
    required TResult Function(String userId) getFollowings,
  }) {
    return getFollowings(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? getUserById,
    TResult? Function(UserForm userForm)? createUser,
    TResult? Function(UserForm userForm, String userId)? updateUser,
    TResult? Function(String id)? deleteUser,
    TResult? Function()? getAllUsers,
    TResult? Function(String followerId, String followingId)? followUser,
    TResult? Function(String followerId, String followingId)? unfollowUser,
    TResult? Function(String userId)? getFollowers,
    TResult? Function(String userId)? getFollowings,
  }) {
    return getFollowings?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? getUserById,
    TResult Function(UserForm userForm)? createUser,
    TResult Function(UserForm userForm, String userId)? updateUser,
    TResult Function(String id)? deleteUser,
    TResult Function()? getAllUsers,
    TResult Function(String followerId, String followingId)? followUser,
    TResult Function(String followerId, String followingId)? unfollowUser,
    TResult Function(String userId)? getFollowers,
    TResult Function(String userId)? getFollowings,
    required TResult orElse(),
  }) {
    if (getFollowings != null) {
      return getFollowings(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserById value) getUserById,
    required TResult Function(CreateUser value) createUser,
    required TResult Function(UpdateUser value) updateUser,
    required TResult Function(DeleteUser value) deleteUser,
    required TResult Function(GetAllUsers value) getAllUsers,
    required TResult Function(FollowUser value) followUser,
    required TResult Function(UnfollowUser value) unfollowUser,
    required TResult Function(GetFollowers value) getFollowers,
    required TResult Function(GetFollowings value) getFollowings,
  }) {
    return getFollowings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserById value)? getUserById,
    TResult? Function(CreateUser value)? createUser,
    TResult? Function(UpdateUser value)? updateUser,
    TResult? Function(DeleteUser value)? deleteUser,
    TResult? Function(GetAllUsers value)? getAllUsers,
    TResult? Function(FollowUser value)? followUser,
    TResult? Function(UnfollowUser value)? unfollowUser,
    TResult? Function(GetFollowers value)? getFollowers,
    TResult? Function(GetFollowings value)? getFollowings,
  }) {
    return getFollowings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserById value)? getUserById,
    TResult Function(CreateUser value)? createUser,
    TResult Function(UpdateUser value)? updateUser,
    TResult Function(DeleteUser value)? deleteUser,
    TResult Function(GetAllUsers value)? getAllUsers,
    TResult Function(FollowUser value)? followUser,
    TResult Function(UnfollowUser value)? unfollowUser,
    TResult Function(GetFollowers value)? getFollowers,
    TResult Function(GetFollowings value)? getFollowings,
    required TResult orElse(),
  }) {
    if (getFollowings != null) {
      return getFollowings(this);
    }
    return orElse();
  }
}

abstract class GetFollowings implements UserEvent {
  const factory GetFollowings(final String userId) = _$GetFollowings;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetFollowingsCopyWith<_$GetFollowings> get copyWith =>
      throw _privateConstructorUsedError;
}
