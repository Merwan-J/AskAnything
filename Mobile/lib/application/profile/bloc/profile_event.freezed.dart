// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProfileEvent,
    required TResult Function(EditProfileForm profileForm) updateProfileEvent,
    required TResult Function(String id) deleteProfile,
    required TResult Function() changePasswordEvent,
    required TResult Function() logoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProfileEvent,
    TResult? Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult? Function(String id)? deleteProfile,
    TResult? Function()? changePasswordEvent,
    TResult? Function()? logoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProfileEvent,
    TResult Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult Function(String id)? deleteProfile,
    TResult Function()? changePasswordEvent,
    TResult Function()? logoutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfileEvent,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(DeleteProfileEvent value) deleteProfile,
    required TResult Function(ChangePasswordEvent value) changePasswordEvent,
    required TResult Function(LogoutEvent value) logoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfileEvent,
    TResult? Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(DeleteProfileEvent value)? deleteProfile,
    TResult? Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult? Function(LogoutEvent value)? logoutEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfileEvent,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(DeleteProfileEvent value)? deleteProfile,
    TResult Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult Function(LogoutEvent value)? logoutEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadProfileEventCopyWith<$Res> {
  factory _$$LoadProfileEventCopyWith(
          _$LoadProfileEvent value, $Res Function(_$LoadProfileEvent) then) =
      __$$LoadProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LoadProfileEvent>
    implements _$$LoadProfileEventCopyWith<$Res> {
  __$$LoadProfileEventCopyWithImpl(
      _$LoadProfileEvent _value, $Res Function(_$LoadProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadProfileEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadProfileEvent implements LoadProfileEvent {
  const _$LoadProfileEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProfileEvent.loadProfileEvent(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadProfileEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadProfileEventCopyWith<_$LoadProfileEvent> get copyWith =>
      __$$LoadProfileEventCopyWithImpl<_$LoadProfileEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProfileEvent,
    required TResult Function(EditProfileForm profileForm) updateProfileEvent,
    required TResult Function(String id) deleteProfile,
    required TResult Function() changePasswordEvent,
    required TResult Function() logoutEvent,
  }) {
    return loadProfileEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProfileEvent,
    TResult? Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult? Function(String id)? deleteProfile,
    TResult? Function()? changePasswordEvent,
    TResult? Function()? logoutEvent,
  }) {
    return loadProfileEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProfileEvent,
    TResult Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult Function(String id)? deleteProfile,
    TResult Function()? changePasswordEvent,
    TResult Function()? logoutEvent,
    required TResult orElse(),
  }) {
    if (loadProfileEvent != null) {
      return loadProfileEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfileEvent,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(DeleteProfileEvent value) deleteProfile,
    required TResult Function(ChangePasswordEvent value) changePasswordEvent,
    required TResult Function(LogoutEvent value) logoutEvent,
  }) {
    return loadProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfileEvent,
    TResult? Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(DeleteProfileEvent value)? deleteProfile,
    TResult? Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult? Function(LogoutEvent value)? logoutEvent,
  }) {
    return loadProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfileEvent,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(DeleteProfileEvent value)? deleteProfile,
    TResult Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult Function(LogoutEvent value)? logoutEvent,
    required TResult orElse(),
  }) {
    if (loadProfileEvent != null) {
      return loadProfileEvent(this);
    }
    return orElse();
  }
}

abstract class LoadProfileEvent implements ProfileEvent {
  const factory LoadProfileEvent(final String id) = _$LoadProfileEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$LoadProfileEventCopyWith<_$LoadProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileEventCopyWith<$Res> {
  factory _$$UpdateProfileEventCopyWith(_$UpdateProfileEvent value,
          $Res Function(_$UpdateProfileEvent) then) =
      __$$UpdateProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({EditProfileForm profileForm});
}

/// @nodoc
class __$$UpdateProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateProfileEvent>
    implements _$$UpdateProfileEventCopyWith<$Res> {
  __$$UpdateProfileEventCopyWithImpl(
      _$UpdateProfileEvent _value, $Res Function(_$UpdateProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileForm = null,
  }) {
    return _then(_$UpdateProfileEvent(
      null == profileForm
          ? _value.profileForm
          : profileForm // ignore: cast_nullable_to_non_nullable
              as EditProfileForm,
    ));
  }
}

/// @nodoc

class _$UpdateProfileEvent implements UpdateProfileEvent {
  const _$UpdateProfileEvent(this.profileForm);

  @override
  final EditProfileForm profileForm;

  @override
  String toString() {
    return 'ProfileEvent.updateProfileEvent(profileForm: $profileForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileEvent &&
            (identical(other.profileForm, profileForm) ||
                other.profileForm == profileForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileEventCopyWith<_$UpdateProfileEvent> get copyWith =>
      __$$UpdateProfileEventCopyWithImpl<_$UpdateProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProfileEvent,
    required TResult Function(EditProfileForm profileForm) updateProfileEvent,
    required TResult Function(String id) deleteProfile,
    required TResult Function() changePasswordEvent,
    required TResult Function() logoutEvent,
  }) {
    return updateProfileEvent(profileForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProfileEvent,
    TResult? Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult? Function(String id)? deleteProfile,
    TResult? Function()? changePasswordEvent,
    TResult? Function()? logoutEvent,
  }) {
    return updateProfileEvent?.call(profileForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProfileEvent,
    TResult Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult Function(String id)? deleteProfile,
    TResult Function()? changePasswordEvent,
    TResult Function()? logoutEvent,
    required TResult orElse(),
  }) {
    if (updateProfileEvent != null) {
      return updateProfileEvent(profileForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfileEvent,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(DeleteProfileEvent value) deleteProfile,
    required TResult Function(ChangePasswordEvent value) changePasswordEvent,
    required TResult Function(LogoutEvent value) logoutEvent,
  }) {
    return updateProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfileEvent,
    TResult? Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(DeleteProfileEvent value)? deleteProfile,
    TResult? Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult? Function(LogoutEvent value)? logoutEvent,
  }) {
    return updateProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfileEvent,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(DeleteProfileEvent value)? deleteProfile,
    TResult Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult Function(LogoutEvent value)? logoutEvent,
    required TResult orElse(),
  }) {
    if (updateProfileEvent != null) {
      return updateProfileEvent(this);
    }
    return orElse();
  }
}

abstract class UpdateProfileEvent implements ProfileEvent {
  const factory UpdateProfileEvent(final EditProfileForm profileForm) =
      _$UpdateProfileEvent;

  EditProfileForm get profileForm;
  @JsonKey(ignore: true)
  _$$UpdateProfileEventCopyWith<_$UpdateProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteProfileEventCopyWith<$Res> {
  factory _$$DeleteProfileEventCopyWith(_$DeleteProfileEvent value,
          $Res Function(_$DeleteProfileEvent) then) =
      __$$DeleteProfileEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteProfileEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DeleteProfileEvent>
    implements _$$DeleteProfileEventCopyWith<$Res> {
  __$$DeleteProfileEventCopyWithImpl(
      _$DeleteProfileEvent _value, $Res Function(_$DeleteProfileEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteProfileEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteProfileEvent implements DeleteProfileEvent {
  const _$DeleteProfileEvent(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProfileEvent.deleteProfile(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteProfileEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteProfileEventCopyWith<_$DeleteProfileEvent> get copyWith =>
      __$$DeleteProfileEventCopyWithImpl<_$DeleteProfileEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProfileEvent,
    required TResult Function(EditProfileForm profileForm) updateProfileEvent,
    required TResult Function(String id) deleteProfile,
    required TResult Function() changePasswordEvent,
    required TResult Function() logoutEvent,
  }) {
    return deleteProfile(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProfileEvent,
    TResult? Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult? Function(String id)? deleteProfile,
    TResult? Function()? changePasswordEvent,
    TResult? Function()? logoutEvent,
  }) {
    return deleteProfile?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProfileEvent,
    TResult Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult Function(String id)? deleteProfile,
    TResult Function()? changePasswordEvent,
    TResult Function()? logoutEvent,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfileEvent,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(DeleteProfileEvent value) deleteProfile,
    required TResult Function(ChangePasswordEvent value) changePasswordEvent,
    required TResult Function(LogoutEvent value) logoutEvent,
  }) {
    return deleteProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfileEvent,
    TResult? Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(DeleteProfileEvent value)? deleteProfile,
    TResult? Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult? Function(LogoutEvent value)? logoutEvent,
  }) {
    return deleteProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfileEvent,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(DeleteProfileEvent value)? deleteProfile,
    TResult Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult Function(LogoutEvent value)? logoutEvent,
    required TResult orElse(),
  }) {
    if (deleteProfile != null) {
      return deleteProfile(this);
    }
    return orElse();
  }
}

abstract class DeleteProfileEvent implements ProfileEvent {
  const factory DeleteProfileEvent(final String id) = _$DeleteProfileEvent;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteProfileEventCopyWith<_$DeleteProfileEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordEventCopyWith<$Res> {
  factory _$$ChangePasswordEventCopyWith(_$ChangePasswordEvent value,
          $Res Function(_$ChangePasswordEvent) then) =
      __$$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangePasswordEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangePasswordEvent>
    implements _$$ChangePasswordEventCopyWith<$Res> {
  __$$ChangePasswordEventCopyWithImpl(
      _$ChangePasswordEvent _value, $Res Function(_$ChangePasswordEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangePasswordEvent implements ChangePasswordEvent {
  const _$ChangePasswordEvent();

  @override
  String toString() {
    return 'ProfileEvent.changePasswordEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangePasswordEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProfileEvent,
    required TResult Function(EditProfileForm profileForm) updateProfileEvent,
    required TResult Function(String id) deleteProfile,
    required TResult Function() changePasswordEvent,
    required TResult Function() logoutEvent,
  }) {
    return changePasswordEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProfileEvent,
    TResult? Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult? Function(String id)? deleteProfile,
    TResult? Function()? changePasswordEvent,
    TResult? Function()? logoutEvent,
  }) {
    return changePasswordEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProfileEvent,
    TResult Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult Function(String id)? deleteProfile,
    TResult Function()? changePasswordEvent,
    TResult Function()? logoutEvent,
    required TResult orElse(),
  }) {
    if (changePasswordEvent != null) {
      return changePasswordEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfileEvent,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(DeleteProfileEvent value) deleteProfile,
    required TResult Function(ChangePasswordEvent value) changePasswordEvent,
    required TResult Function(LogoutEvent value) logoutEvent,
  }) {
    return changePasswordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfileEvent,
    TResult? Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(DeleteProfileEvent value)? deleteProfile,
    TResult? Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult? Function(LogoutEvent value)? logoutEvent,
  }) {
    return changePasswordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfileEvent,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(DeleteProfileEvent value)? deleteProfile,
    TResult Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult Function(LogoutEvent value)? logoutEvent,
    required TResult orElse(),
  }) {
    if (changePasswordEvent != null) {
      return changePasswordEvent(this);
    }
    return orElse();
  }
}

abstract class ChangePasswordEvent implements ProfileEvent {
  const factory ChangePasswordEvent() = _$ChangePasswordEvent;
}

/// @nodoc
abstract class _$$LogoutEventCopyWith<$Res> {
  factory _$$LogoutEventCopyWith(
          _$LogoutEvent value, $Res Function(_$LogoutEvent) then) =
      __$$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$LogoutEvent>
    implements _$$LogoutEventCopyWith<$Res> {
  __$$LogoutEventCopyWithImpl(
      _$LogoutEvent _value, $Res Function(_$LogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEvent implements LogoutEvent {
  const _$LogoutEvent();

  @override
  String toString() {
    return 'ProfileEvent.logoutEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) loadProfileEvent,
    required TResult Function(EditProfileForm profileForm) updateProfileEvent,
    required TResult Function(String id) deleteProfile,
    required TResult Function() changePasswordEvent,
    required TResult Function() logoutEvent,
  }) {
    return logoutEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? loadProfileEvent,
    TResult? Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult? Function(String id)? deleteProfile,
    TResult? Function()? changePasswordEvent,
    TResult? Function()? logoutEvent,
  }) {
    return logoutEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? loadProfileEvent,
    TResult Function(EditProfileForm profileForm)? updateProfileEvent,
    TResult Function(String id)? deleteProfile,
    TResult Function()? changePasswordEvent,
    TResult Function()? logoutEvent,
    required TResult orElse(),
  }) {
    if (logoutEvent != null) {
      return logoutEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadProfileEvent value) loadProfileEvent,
    required TResult Function(UpdateProfileEvent value) updateProfileEvent,
    required TResult Function(DeleteProfileEvent value) deleteProfile,
    required TResult Function(ChangePasswordEvent value) changePasswordEvent,
    required TResult Function(LogoutEvent value) logoutEvent,
  }) {
    return logoutEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadProfileEvent value)? loadProfileEvent,
    TResult? Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult? Function(DeleteProfileEvent value)? deleteProfile,
    TResult? Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult? Function(LogoutEvent value)? logoutEvent,
  }) {
    return logoutEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadProfileEvent value)? loadProfileEvent,
    TResult Function(UpdateProfileEvent value)? updateProfileEvent,
    TResult Function(DeleteProfileEvent value)? deleteProfile,
    TResult Function(ChangePasswordEvent value)? changePasswordEvent,
    TResult Function(LogoutEvent value)? logoutEvent,
    required TResult orElse(),
  }) {
    if (logoutEvent != null) {
      return logoutEvent(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements ProfileEvent {
  const factory LogoutEvent() = _$LogoutEvent;
}
