// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerEventCopyWith<$Res> {
  factory $AnswerEventCopyWith(
          AnswerEvent value, $Res Function(AnswerEvent) then) =
      _$AnswerEventCopyWithImpl<$Res, AnswerEvent>;
}

/// @nodoc
class _$AnswerEventCopyWithImpl<$Res, $Val extends AnswerEvent>
    implements $AnswerEventCopyWith<$Res> {
  _$AnswerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadAnswerEventCopyWith<$Res> {
  factory _$$LoadAnswerEventCopyWith(
          _$LoadAnswerEvent value, $Res Function(_$LoadAnswerEvent) then) =
      __$$LoadAnswerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String answerId});
}

/// @nodoc
class __$$LoadAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$LoadAnswerEvent>
    implements _$$LoadAnswerEventCopyWith<$Res> {
  __$$LoadAnswerEventCopyWithImpl(
      _$LoadAnswerEvent _value, $Res Function(_$LoadAnswerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
  }) {
    return _then(_$LoadAnswerEvent(
      null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadAnswerEvent implements LoadAnswerEvent {
  const _$LoadAnswerEvent(this.answerId);

  @override
  final String answerId;

  @override
  String toString() {
    return 'AnswerEvent.loadAnswer(answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadAnswerEvent &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadAnswerEventCopyWith<_$LoadAnswerEvent> get copyWith =>
      __$$LoadAnswerEventCopyWithImpl<_$LoadAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) {
    return loadAnswer(answerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) {
    return loadAnswer?.call(answerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) {
    if (loadAnswer != null) {
      return loadAnswer(answerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) {
    return loadAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) {
    return loadAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) {
    if (loadAnswer != null) {
      return loadAnswer(this);
    }
    return orElse();
  }
}

abstract class LoadAnswerEvent implements AnswerEvent {
  const factory LoadAnswerEvent(final String answerId) = _$LoadAnswerEvent;

  String get answerId;
  @JsonKey(ignore: true)
  _$$LoadAnswerEventCopyWith<_$LoadAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAnswerEventCopyWith<$Res> {
  factory _$$AddAnswerEventCopyWith(
          _$AddAnswerEvent value, $Res Function(_$AddAnswerEvent) then) =
      __$$AddAnswerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AnswerForm answerForm});

  $AnswerFormCopyWith<$Res> get answerForm;
}

/// @nodoc
class __$$AddAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$AddAnswerEvent>
    implements _$$AddAnswerEventCopyWith<$Res> {
  __$$AddAnswerEventCopyWithImpl(
      _$AddAnswerEvent _value, $Res Function(_$AddAnswerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerForm = null,
  }) {
    return _then(_$AddAnswerEvent(
      null == answerForm
          ? _value.answerForm
          : answerForm // ignore: cast_nullable_to_non_nullable
              as AnswerForm,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AnswerFormCopyWith<$Res> get answerForm {
    return $AnswerFormCopyWith<$Res>(_value.answerForm, (value) {
      return _then(_value.copyWith(answerForm: value));
    });
  }
}

/// @nodoc

class _$AddAnswerEvent implements AddAnswerEvent {
  const _$AddAnswerEvent(this.answerForm);

  @override
  final AnswerForm answerForm;

  @override
  String toString() {
    return 'AnswerEvent.addAnswer(answerForm: $answerForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAnswerEvent &&
            (identical(other.answerForm, answerForm) ||
                other.answerForm == answerForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAnswerEventCopyWith<_$AddAnswerEvent> get copyWith =>
      __$$AddAnswerEventCopyWithImpl<_$AddAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) {
    return addAnswer(answerForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) {
    return addAnswer?.call(answerForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) {
    if (addAnswer != null) {
      return addAnswer(answerForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) {
    return addAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) {
    return addAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) {
    if (addAnswer != null) {
      return addAnswer(this);
    }
    return orElse();
  }
}

abstract class AddAnswerEvent implements AnswerEvent {
  const factory AddAnswerEvent(final AnswerForm answerForm) = _$AddAnswerEvent;

  AnswerForm get answerForm;
  @JsonKey(ignore: true)
  _$$AddAnswerEventCopyWith<_$AddAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAnswerEventCopyWith<$Res> {
  factory _$$UpdateAnswerEventCopyWith(
          _$UpdateAnswerEvent value, $Res Function(_$UpdateAnswerEvent) then) =
      __$$UpdateAnswerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$UpdateAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$UpdateAnswerEvent>
    implements _$$UpdateAnswerEventCopyWith<$Res> {
  __$$UpdateAnswerEventCopyWithImpl(
      _$UpdateAnswerEvent _value, $Res Function(_$UpdateAnswerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$UpdateAnswerEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateAnswerEvent implements UpdateAnswerEvent {
  const _$UpdateAnswerEvent(this.id, this.text);

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'AnswerEvent.updateAnswer(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAnswerEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAnswerEventCopyWith<_$UpdateAnswerEvent> get copyWith =>
      __$$UpdateAnswerEventCopyWithImpl<_$UpdateAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) {
    return updateAnswer(id, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) {
    return updateAnswer?.call(id, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) {
    if (updateAnswer != null) {
      return updateAnswer(id, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) {
    return updateAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) {
    return updateAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) {
    if (updateAnswer != null) {
      return updateAnswer(this);
    }
    return orElse();
  }
}

abstract class UpdateAnswerEvent implements AnswerEvent {
  const factory UpdateAnswerEvent(final String id, final String text) =
      _$UpdateAnswerEvent;

  String get id;
  String get text;
  @JsonKey(ignore: true)
  _$$UpdateAnswerEventCopyWith<_$UpdateAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteAnswerEventCopyWith<$Res> {
  factory _$$DeleteAnswerEventCopyWith(
          _$DeleteAnswerEvent value, $Res Function(_$DeleteAnswerEvent) then) =
      __$$DeleteAnswerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String answerId});
}

/// @nodoc
class __$$DeleteAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$DeleteAnswerEvent>
    implements _$$DeleteAnswerEventCopyWith<$Res> {
  __$$DeleteAnswerEventCopyWithImpl(
      _$DeleteAnswerEvent _value, $Res Function(_$DeleteAnswerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
  }) {
    return _then(_$DeleteAnswerEvent(
      null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteAnswerEvent implements DeleteAnswerEvent {
  const _$DeleteAnswerEvent(this.answerId);

  @override
  final String answerId;

  @override
  String toString() {
    return 'AnswerEvent.deleteAnswer(answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteAnswerEvent &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteAnswerEventCopyWith<_$DeleteAnswerEvent> get copyWith =>
      __$$DeleteAnswerEventCopyWithImpl<_$DeleteAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) {
    return deleteAnswer(answerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) {
    return deleteAnswer?.call(answerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) {
    if (deleteAnswer != null) {
      return deleteAnswer(answerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) {
    return deleteAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) {
    return deleteAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) {
    if (deleteAnswer != null) {
      return deleteAnswer(this);
    }
    return orElse();
  }
}

abstract class DeleteAnswerEvent implements AnswerEvent {
  const factory DeleteAnswerEvent(final String answerId) = _$DeleteAnswerEvent;

  String get answerId;
  @JsonKey(ignore: true)
  _$$DeleteAnswerEventCopyWith<_$DeleteAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpvoteAnswerEventCopyWith<$Res> {
  factory _$$UpvoteAnswerEventCopyWith(
          _$UpvoteAnswerEvent value, $Res Function(_$UpvoteAnswerEvent) then) =
      __$$UpvoteAnswerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String answerId});
}

/// @nodoc
class __$$UpvoteAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$UpvoteAnswerEvent>
    implements _$$UpvoteAnswerEventCopyWith<$Res> {
  __$$UpvoteAnswerEventCopyWithImpl(
      _$UpvoteAnswerEvent _value, $Res Function(_$UpvoteAnswerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
  }) {
    return _then(_$UpvoteAnswerEvent(
      null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpvoteAnswerEvent implements UpvoteAnswerEvent {
  const _$UpvoteAnswerEvent(this.answerId);

  @override
  final String answerId;

  @override
  String toString() {
    return 'AnswerEvent.upvote(answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpvoteAnswerEvent &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpvoteAnswerEventCopyWith<_$UpvoteAnswerEvent> get copyWith =>
      __$$UpvoteAnswerEventCopyWithImpl<_$UpvoteAnswerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) {
    return upvote(answerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) {
    return upvote?.call(answerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) {
    if (upvote != null) {
      return upvote(answerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) {
    return upvote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) {
    return upvote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) {
    if (upvote != null) {
      return upvote(this);
    }
    return orElse();
  }
}

abstract class UpvoteAnswerEvent implements AnswerEvent {
  const factory UpvoteAnswerEvent(final String answerId) = _$UpvoteAnswerEvent;

  String get answerId;
  @JsonKey(ignore: true)
  _$$UpvoteAnswerEventCopyWith<_$UpvoteAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownVoteAnswerEventCopyWith<$Res> {
  factory _$$DownVoteAnswerEventCopyWith(_$DownVoteAnswerEvent value,
          $Res Function(_$DownVoteAnswerEvent) then) =
      __$$DownVoteAnswerEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String answerId});
}

/// @nodoc
class __$$DownVoteAnswerEventCopyWithImpl<$Res>
    extends _$AnswerEventCopyWithImpl<$Res, _$DownVoteAnswerEvent>
    implements _$$DownVoteAnswerEventCopyWith<$Res> {
  __$$DownVoteAnswerEventCopyWithImpl(
      _$DownVoteAnswerEvent _value, $Res Function(_$DownVoteAnswerEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answerId = null,
  }) {
    return _then(_$DownVoteAnswerEvent(
      null == answerId
          ? _value.answerId
          : answerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownVoteAnswerEvent implements DownVoteAnswerEvent {
  const _$DownVoteAnswerEvent(this.answerId);

  @override
  final String answerId;

  @override
  String toString() {
    return 'AnswerEvent.downvote(answerId: $answerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownVoteAnswerEvent &&
            (identical(other.answerId, answerId) ||
                other.answerId == answerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownVoteAnswerEventCopyWith<_$DownVoteAnswerEvent> get copyWith =>
      __$$DownVoteAnswerEventCopyWithImpl<_$DownVoteAnswerEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String answerId) loadAnswer,
    required TResult Function(AnswerForm answerForm) addAnswer,
    required TResult Function(String id, String text) updateAnswer,
    required TResult Function(String answerId) deleteAnswer,
    required TResult Function(String answerId) upvote,
    required TResult Function(String answerId) downvote,
  }) {
    return downvote(answerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String answerId)? loadAnswer,
    TResult? Function(AnswerForm answerForm)? addAnswer,
    TResult? Function(String id, String text)? updateAnswer,
    TResult? Function(String answerId)? deleteAnswer,
    TResult? Function(String answerId)? upvote,
    TResult? Function(String answerId)? downvote,
  }) {
    return downvote?.call(answerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String answerId)? loadAnswer,
    TResult Function(AnswerForm answerForm)? addAnswer,
    TResult Function(String id, String text)? updateAnswer,
    TResult Function(String answerId)? deleteAnswer,
    TResult Function(String answerId)? upvote,
    TResult Function(String answerId)? downvote,
    required TResult orElse(),
  }) {
    if (downvote != null) {
      return downvote(answerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadAnswerEvent value) loadAnswer,
    required TResult Function(AddAnswerEvent value) addAnswer,
    required TResult Function(UpdateAnswerEvent value) updateAnswer,
    required TResult Function(DeleteAnswerEvent value) deleteAnswer,
    required TResult Function(UpvoteAnswerEvent value) upvote,
    required TResult Function(DownVoteAnswerEvent value) downvote,
  }) {
    return downvote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadAnswerEvent value)? loadAnswer,
    TResult? Function(AddAnswerEvent value)? addAnswer,
    TResult? Function(UpdateAnswerEvent value)? updateAnswer,
    TResult? Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult? Function(UpvoteAnswerEvent value)? upvote,
    TResult? Function(DownVoteAnswerEvent value)? downvote,
  }) {
    return downvote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadAnswerEvent value)? loadAnswer,
    TResult Function(AddAnswerEvent value)? addAnswer,
    TResult Function(UpdateAnswerEvent value)? updateAnswer,
    TResult Function(DeleteAnswerEvent value)? deleteAnswer,
    TResult Function(UpvoteAnswerEvent value)? upvote,
    TResult Function(DownVoteAnswerEvent value)? downvote,
    required TResult orElse(),
  }) {
    if (downvote != null) {
      return downvote(this);
    }
    return orElse();
  }
}

abstract class DownVoteAnswerEvent implements AnswerEvent {
  const factory DownVoteAnswerEvent(final String answerId) =
      _$DownVoteAnswerEvent;

  String get answerId;
  @JsonKey(ignore: true)
  _$$DownVoteAnswerEventCopyWith<_$DownVoteAnswerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
