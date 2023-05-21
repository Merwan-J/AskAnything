// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpectedError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFailureCopyWith<$Res> {
  factory $UserFailureCopyWith(
          UserFailure value, $Res Function(UserFailure) then) =
      _$UserFailureCopyWithImpl<$Res, UserFailure>;
}

/// @nodoc
class _$UserFailureCopyWithImpl<$Res, $Val extends UserFailure>
    implements $UserFailureCopyWith<$Res> {
  _$UserFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnexpectedErrorCopyWith<$Res> {
  factory _$$_UnexpectedErrorCopyWith(
          _$_UnexpectedError value, $Res Function(_$_UnexpectedError) then) =
      __$$_UnexpectedErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnexpectedErrorCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$_UnexpectedError>
    implements _$$_UnexpectedErrorCopyWith<$Res> {
  __$$_UnexpectedErrorCopyWithImpl(
      _$_UnexpectedError _value, $Res Function(_$_UnexpectedError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UnexpectedError implements _UnexpectedError {
  const _$_UnexpectedError();

  @override
  String toString() {
    return 'UserFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
  }) {
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpectedError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
  }) {
    return unexpectedError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements UserFailure {
  const factory _UnexpectedError() = _$_UnexpectedError;
}

/// @nodoc
abstract class _$$_NotFoundErrorCopyWith<$Res> {
  factory _$$_NotFoundErrorCopyWith(
          _$_NotFoundError value, $Res Function(_$_NotFoundError) then) =
      __$$_NotFoundErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotFoundErrorCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$_NotFoundError>
    implements _$$_NotFoundErrorCopyWith<$Res> {
  __$$_NotFoundErrorCopyWithImpl(
      _$_NotFoundError _value, $Res Function(_$_NotFoundError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NotFoundError implements _NotFoundError {
  const _$_NotFoundError();

  @override
  String toString() {
    return 'UserFailure.notFoundError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotFoundError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
  }) {
    return notFoundError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpectedError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
  }) {
    return notFoundError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return notFoundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class _NotFoundError implements UserFailure {
  const factory _NotFoundError() = _$_NotFoundError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$UserFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'UserFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpectedError,
    required TResult Function() notFoundError,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpectedError,
    TResult? Function()? notFoundError,
    TResult? Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpectedError,
    TResult Function()? notFoundError,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_NotFoundError value) notFoundError,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnexpectedError value)? unexpectedError,
    TResult? Function(_NotFoundError value)? notFoundError,
    TResult? Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_NotFoundError value)? notFoundError,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements UserFailure {
  const factory _ServerError() = _$_ServerError;
}
