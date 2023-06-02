// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookmarkEvent {
  String get userId => throw _privateConstructorUsedError;
  String get questionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String questionId) addBookmark,
    required TResult Function(String userId, String questionId) removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String questionId)? addBookmark,
    TResult? Function(String userId, String questionId)? removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String questionId)? addBookmark,
    TResult Function(String userId, String questionId)? removeBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBookmarkEvent value) addBookmark,
    required TResult Function(RemoveBookmarkEvent value) removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBookmarkEvent value)? addBookmark,
    TResult? Function(RemoveBookmarkEvent value)? removeBookmark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBookmarkEvent value)? addBookmark,
    TResult Function(RemoveBookmarkEvent value)? removeBookmark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookmarkEventCopyWith<BookmarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkEventCopyWith<$Res> {
  factory $BookmarkEventCopyWith(
          BookmarkEvent value, $Res Function(BookmarkEvent) then) =
      _$BookmarkEventCopyWithImpl<$Res, BookmarkEvent>;
  @useResult
  $Res call({String userId, String questionId});
}

/// @nodoc
class _$BookmarkEventCopyWithImpl<$Res, $Val extends BookmarkEvent>
    implements $BookmarkEventCopyWith<$Res> {
  _$BookmarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? questionId = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddBookmarkEventCopyWith<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  factory _$$AddBookmarkEventCopyWith(
          _$AddBookmarkEvent value, $Res Function(_$AddBookmarkEvent) then) =
      __$$AddBookmarkEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String questionId});
}

/// @nodoc
class __$$AddBookmarkEventCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$AddBookmarkEvent>
    implements _$$AddBookmarkEventCopyWith<$Res> {
  __$$AddBookmarkEventCopyWithImpl(
      _$AddBookmarkEvent _value, $Res Function(_$AddBookmarkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? questionId = null,
  }) {
    return _then(_$AddBookmarkEvent(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddBookmarkEvent implements AddBookmarkEvent {
  const _$AddBookmarkEvent(this.userId, this.questionId);

  @override
  final String userId;
  @override
  final String questionId;

  @override
  String toString() {
    return 'BookmarkEvent.addBookmark(userId: $userId, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBookmarkEvent &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBookmarkEventCopyWith<_$AddBookmarkEvent> get copyWith =>
      __$$AddBookmarkEventCopyWithImpl<_$AddBookmarkEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String questionId) addBookmark,
    required TResult Function(String userId, String questionId) removeBookmark,
  }) {
    return addBookmark(userId, questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String questionId)? addBookmark,
    TResult? Function(String userId, String questionId)? removeBookmark,
  }) {
    return addBookmark?.call(userId, questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String questionId)? addBookmark,
    TResult Function(String userId, String questionId)? removeBookmark,
    required TResult orElse(),
  }) {
    if (addBookmark != null) {
      return addBookmark(userId, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBookmarkEvent value) addBookmark,
    required TResult Function(RemoveBookmarkEvent value) removeBookmark,
  }) {
    return addBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBookmarkEvent value)? addBookmark,
    TResult? Function(RemoveBookmarkEvent value)? removeBookmark,
  }) {
    return addBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBookmarkEvent value)? addBookmark,
    TResult Function(RemoveBookmarkEvent value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (addBookmark != null) {
      return addBookmark(this);
    }
    return orElse();
  }
}

abstract class AddBookmarkEvent implements BookmarkEvent {
  const factory AddBookmarkEvent(final String userId, final String questionId) =
      _$AddBookmarkEvent;

  @override
  String get userId;
  @override
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$AddBookmarkEventCopyWith<_$AddBookmarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBookmarkEventCopyWith<$Res>
    implements $BookmarkEventCopyWith<$Res> {
  factory _$$RemoveBookmarkEventCopyWith(_$RemoveBookmarkEvent value,
          $Res Function(_$RemoveBookmarkEvent) then) =
      __$$RemoveBookmarkEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String questionId});
}

/// @nodoc
class __$$RemoveBookmarkEventCopyWithImpl<$Res>
    extends _$BookmarkEventCopyWithImpl<$Res, _$RemoveBookmarkEvent>
    implements _$$RemoveBookmarkEventCopyWith<$Res> {
  __$$RemoveBookmarkEventCopyWithImpl(
      _$RemoveBookmarkEvent _value, $Res Function(_$RemoveBookmarkEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? questionId = null,
  }) {
    return _then(_$RemoveBookmarkEvent(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveBookmarkEvent implements RemoveBookmarkEvent {
  const _$RemoveBookmarkEvent(this.userId, this.questionId);

  @override
  final String userId;
  @override
  final String questionId;

  @override
  String toString() {
    return 'BookmarkEvent.removeBookmark(userId: $userId, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBookmarkEvent &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBookmarkEventCopyWith<_$RemoveBookmarkEvent> get copyWith =>
      __$$RemoveBookmarkEventCopyWithImpl<_$RemoveBookmarkEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String questionId) addBookmark,
    required TResult Function(String userId, String questionId) removeBookmark,
  }) {
    return removeBookmark(userId, questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String questionId)? addBookmark,
    TResult? Function(String userId, String questionId)? removeBookmark,
  }) {
    return removeBookmark?.call(userId, questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String questionId)? addBookmark,
    TResult Function(String userId, String questionId)? removeBookmark,
    required TResult orElse(),
  }) {
    if (removeBookmark != null) {
      return removeBookmark(userId, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddBookmarkEvent value) addBookmark,
    required TResult Function(RemoveBookmarkEvent value) removeBookmark,
  }) {
    return removeBookmark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddBookmarkEvent value)? addBookmark,
    TResult? Function(RemoveBookmarkEvent value)? removeBookmark,
  }) {
    return removeBookmark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddBookmarkEvent value)? addBookmark,
    TResult Function(RemoveBookmarkEvent value)? removeBookmark,
    required TResult orElse(),
  }) {
    if (removeBookmark != null) {
      return removeBookmark(this);
    }
    return orElse();
  }
}

abstract class RemoveBookmarkEvent implements BookmarkEvent {
  const factory RemoveBookmarkEvent(
      final String userId, final String questionId) = _$RemoveBookmarkEvent;

  @override
  String get userId;
  @override
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$RemoveBookmarkEventCopyWith<_$RemoveBookmarkEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
