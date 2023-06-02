// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) bookmarkAddSuccess,
    required TResult Function() loading,
    required TResult Function(User user) bookmarkRemoveSuccess,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? bookmarkAddSuccess,
    TResult? Function()? loading,
    TResult? Function(User user)? bookmarkRemoveSuccess,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? bookmarkAddSuccess,
    TResult Function()? loading,
    TResult Function(User user)? bookmarkRemoveSuccess,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookmarkAddSuccess value) bookmarkAddSuccess,
    required TResult Function(Loading value) loading,
    required TResult Function(BookmarkRemoveSuccess value)
        bookmarkRemoveSuccess,
    required TResult Function(Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult? Function(Loading value)? loading,
    TResult? Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult? Function(Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult Function(Loading value)? loading,
    TResult Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkStateCopyWith<$Res> {
  factory $BookmarkStateCopyWith(
          BookmarkState value, $Res Function(BookmarkState) then) =
      _$BookmarkStateCopyWithImpl<$Res, BookmarkState>;
}

/// @nodoc
class _$BookmarkStateCopyWithImpl<$Res, $Val extends BookmarkState>
    implements $BookmarkStateCopyWith<$Res> {
  _$BookmarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'BookmarkState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) bookmarkAddSuccess,
    required TResult Function() loading,
    required TResult Function(User user) bookmarkRemoveSuccess,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? bookmarkAddSuccess,
    TResult? Function()? loading,
    TResult? Function(User user)? bookmarkRemoveSuccess,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? bookmarkAddSuccess,
    TResult Function()? loading,
    TResult Function(User user)? bookmarkRemoveSuccess,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookmarkAddSuccess value) bookmarkAddSuccess,
    required TResult Function(Loading value) loading,
    required TResult Function(BookmarkRemoveSuccess value)
        bookmarkRemoveSuccess,
    required TResult Function(Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult? Function(Loading value)? loading,
    TResult? Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult? Function(Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult Function(Loading value)? loading,
    TResult Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements BookmarkState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$BookmarkAddSuccessCopyWith<$Res> {
  factory _$$BookmarkAddSuccessCopyWith(_$BookmarkAddSuccess value,
          $Res Function(_$BookmarkAddSuccess) then) =
      __$$BookmarkAddSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$BookmarkAddSuccessCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkAddSuccess>
    implements _$$BookmarkAddSuccessCopyWith<$Res> {
  __$$BookmarkAddSuccessCopyWithImpl(
      _$BookmarkAddSuccess _value, $Res Function(_$BookmarkAddSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$BookmarkAddSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$BookmarkAddSuccess implements BookmarkAddSuccess {
  const _$BookmarkAddSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'BookmarkState.bookmarkAddSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkAddSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkAddSuccessCopyWith<_$BookmarkAddSuccess> get copyWith =>
      __$$BookmarkAddSuccessCopyWithImpl<_$BookmarkAddSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) bookmarkAddSuccess,
    required TResult Function() loading,
    required TResult Function(User user) bookmarkRemoveSuccess,
    required TResult Function(String errorMessage) failure,
  }) {
    return bookmarkAddSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? bookmarkAddSuccess,
    TResult? Function()? loading,
    TResult? Function(User user)? bookmarkRemoveSuccess,
    TResult? Function(String errorMessage)? failure,
  }) {
    return bookmarkAddSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? bookmarkAddSuccess,
    TResult Function()? loading,
    TResult Function(User user)? bookmarkRemoveSuccess,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (bookmarkAddSuccess != null) {
      return bookmarkAddSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookmarkAddSuccess value) bookmarkAddSuccess,
    required TResult Function(Loading value) loading,
    required TResult Function(BookmarkRemoveSuccess value)
        bookmarkRemoveSuccess,
    required TResult Function(Failure value) failure,
  }) {
    return bookmarkAddSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult? Function(Loading value)? loading,
    TResult? Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult? Function(Failure value)? failure,
  }) {
    return bookmarkAddSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult Function(Loading value)? loading,
    TResult Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (bookmarkAddSuccess != null) {
      return bookmarkAddSuccess(this);
    }
    return orElse();
  }
}

abstract class BookmarkAddSuccess implements BookmarkState {
  const factory BookmarkAddSuccess(final User user) = _$BookmarkAddSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$BookmarkAddSuccessCopyWith<_$BookmarkAddSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'BookmarkState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) bookmarkAddSuccess,
    required TResult Function() loading,
    required TResult Function(User user) bookmarkRemoveSuccess,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? bookmarkAddSuccess,
    TResult? Function()? loading,
    TResult? Function(User user)? bookmarkRemoveSuccess,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? bookmarkAddSuccess,
    TResult Function()? loading,
    TResult Function(User user)? bookmarkRemoveSuccess,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookmarkAddSuccess value) bookmarkAddSuccess,
    required TResult Function(Loading value) loading,
    required TResult Function(BookmarkRemoveSuccess value)
        bookmarkRemoveSuccess,
    required TResult Function(Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult? Function(Loading value)? loading,
    TResult? Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult? Function(Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult Function(Loading value)? loading,
    TResult Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements BookmarkState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$BookmarkRemoveSuccessCopyWith<$Res> {
  factory _$$BookmarkRemoveSuccessCopyWith(_$BookmarkRemoveSuccess value,
          $Res Function(_$BookmarkRemoveSuccess) then) =
      __$$BookmarkRemoveSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$BookmarkRemoveSuccessCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$BookmarkRemoveSuccess>
    implements _$$BookmarkRemoveSuccessCopyWith<$Res> {
  __$$BookmarkRemoveSuccessCopyWithImpl(_$BookmarkRemoveSuccess _value,
      $Res Function(_$BookmarkRemoveSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$BookmarkRemoveSuccess(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$BookmarkRemoveSuccess implements BookmarkRemoveSuccess {
  const _$BookmarkRemoveSuccess(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'BookmarkState.bookmarkRemoveSuccess(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookmarkRemoveSuccess &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookmarkRemoveSuccessCopyWith<_$BookmarkRemoveSuccess> get copyWith =>
      __$$BookmarkRemoveSuccessCopyWithImpl<_$BookmarkRemoveSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) bookmarkAddSuccess,
    required TResult Function() loading,
    required TResult Function(User user) bookmarkRemoveSuccess,
    required TResult Function(String errorMessage) failure,
  }) {
    return bookmarkRemoveSuccess(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? bookmarkAddSuccess,
    TResult? Function()? loading,
    TResult? Function(User user)? bookmarkRemoveSuccess,
    TResult? Function(String errorMessage)? failure,
  }) {
    return bookmarkRemoveSuccess?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? bookmarkAddSuccess,
    TResult Function()? loading,
    TResult Function(User user)? bookmarkRemoveSuccess,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (bookmarkRemoveSuccess != null) {
      return bookmarkRemoveSuccess(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookmarkAddSuccess value) bookmarkAddSuccess,
    required TResult Function(Loading value) loading,
    required TResult Function(BookmarkRemoveSuccess value)
        bookmarkRemoveSuccess,
    required TResult Function(Failure value) failure,
  }) {
    return bookmarkRemoveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult? Function(Loading value)? loading,
    TResult? Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult? Function(Failure value)? failure,
  }) {
    return bookmarkRemoveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult Function(Loading value)? loading,
    TResult Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (bookmarkRemoveSuccess != null) {
      return bookmarkRemoveSuccess(this);
    }
    return orElse();
  }
}

abstract class BookmarkRemoveSuccess implements BookmarkState {
  const factory BookmarkRemoveSuccess(final User user) =
      _$BookmarkRemoveSuccess;

  User get user;
  @JsonKey(ignore: true)
  _$$BookmarkRemoveSuccessCopyWith<_$BookmarkRemoveSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<$Res> {
  factory _$$FailureCopyWith(_$Failure value, $Res Function(_$Failure) then) =
      __$$FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$FailureCopyWithImpl<$Res>
    extends _$BookmarkStateCopyWithImpl<$Res, _$Failure>
    implements _$$FailureCopyWith<$Res> {
  __$$FailureCopyWithImpl(_$Failure _value, $Res Function(_$Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$Failure(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Failure implements Failure {
  const _$Failure(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'BookmarkState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCopyWith<_$Failure> get copyWith =>
      __$$FailureCopyWithImpl<_$Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(User user) bookmarkAddSuccess,
    required TResult Function() loading,
    required TResult Function(User user) bookmarkRemoveSuccess,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(User user)? bookmarkAddSuccess,
    TResult? Function()? loading,
    TResult? Function(User user)? bookmarkRemoveSuccess,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(User user)? bookmarkAddSuccess,
    TResult Function()? loading,
    TResult Function(User user)? bookmarkRemoveSuccess,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(BookmarkAddSuccess value) bookmarkAddSuccess,
    required TResult Function(Loading value) loading,
    required TResult Function(BookmarkRemoveSuccess value)
        bookmarkRemoveSuccess,
    required TResult Function(Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult? Function(Loading value)? loading,
    TResult? Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult? Function(Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(BookmarkAddSuccess value)? bookmarkAddSuccess,
    TResult Function(Loading value)? loading,
    TResult Function(BookmarkRemoveSuccess value)? bookmarkRemoveSuccess,
    TResult Function(Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure implements BookmarkState {
  const factory Failure(final String errorMessage) = _$Failure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<_$Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
