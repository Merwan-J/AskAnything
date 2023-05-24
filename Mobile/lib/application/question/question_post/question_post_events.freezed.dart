// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_post_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionPostEvent {
  QuestionForm get questionForm => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, String questionId)
        update,
    required TResult Function(QuestionForm questionForm) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionForm questionForm, String questionId)? update,
    TResult? Function(QuestionForm questionForm)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, String questionId)? update,
    TResult Function(QuestionForm questionForm)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostUpdateEvent value) update,
    required TResult Function(QuestionPostSubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostUpdateEvent value)? update,
    TResult? Function(QuestionPostSubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostUpdateEvent value)? update,
    TResult Function(QuestionPostSubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionPostEventCopyWith<QuestionPostEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionPostEventCopyWith<$Res> {
  factory $QuestionPostEventCopyWith(
          QuestionPostEvent value, $Res Function(QuestionPostEvent) then) =
      _$QuestionPostEventCopyWithImpl<$Res, QuestionPostEvent>;
  @useResult
  $Res call({QuestionForm questionForm});

  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class _$QuestionPostEventCopyWithImpl<$Res, $Val extends QuestionPostEvent>
    implements $QuestionPostEventCopyWith<$Res> {
  _$QuestionPostEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionForm = null,
  }) {
    return _then(_value.copyWith(
      questionForm: null == questionForm
          ? _value.questionForm
          : questionForm // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionFormCopyWith<$Res> get questionForm {
    return $QuestionFormCopyWith<$Res>(_value.questionForm, (value) {
      return _then(_value.copyWith(questionForm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionPostUpdateEventCopyWith<$Res>
    implements $QuestionPostEventCopyWith<$Res> {
  factory _$$QuestionPostUpdateEventCopyWith(_$QuestionPostUpdateEvent value,
          $Res Function(_$QuestionPostUpdateEvent) then) =
      __$$QuestionPostUpdateEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionForm questionForm, String questionId});

  @override
  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class __$$QuestionPostUpdateEventCopyWithImpl<$Res>
    extends _$QuestionPostEventCopyWithImpl<$Res, _$QuestionPostUpdateEvent>
    implements _$$QuestionPostUpdateEventCopyWith<$Res> {
  __$$QuestionPostUpdateEventCopyWithImpl(_$QuestionPostUpdateEvent _value,
      $Res Function(_$QuestionPostUpdateEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionForm = null,
    Object? questionId = null,
  }) {
    return _then(_$QuestionPostUpdateEvent(
      questionForm: null == questionForm
          ? _value.questionForm
          : questionForm // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuestionPostUpdateEvent implements QuestionPostUpdateEvent {
  const _$QuestionPostUpdateEvent(
      {required this.questionForm, required this.questionId});

  @override
  final QuestionForm questionForm;
  @override
  final String questionId;

  @override
  String toString() {
    return 'QuestionPostEvent.update(questionForm: $questionForm, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostUpdateEvent &&
            (identical(other.questionForm, questionForm) ||
                other.questionForm == questionForm) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionForm, questionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionPostUpdateEventCopyWith<_$QuestionPostUpdateEvent> get copyWith =>
      __$$QuestionPostUpdateEventCopyWithImpl<_$QuestionPostUpdateEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, String questionId)
        update,
    required TResult Function(QuestionForm questionForm) submit,
  }) {
    return update(questionForm, questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionForm questionForm, String questionId)? update,
    TResult? Function(QuestionForm questionForm)? submit,
  }) {
    return update?.call(questionForm, questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, String questionId)? update,
    TResult Function(QuestionForm questionForm)? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(questionForm, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostUpdateEvent value) update,
    required TResult Function(QuestionPostSubmitEvent value) submit,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostUpdateEvent value)? update,
    TResult? Function(QuestionPostSubmitEvent value)? submit,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostUpdateEvent value)? update,
    TResult Function(QuestionPostSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class QuestionPostUpdateEvent implements QuestionPostEvent {
  const factory QuestionPostUpdateEvent(
      {required final QuestionForm questionForm,
      required final String questionId}) = _$QuestionPostUpdateEvent;

  @override
  QuestionForm get questionForm;
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$QuestionPostUpdateEventCopyWith<_$QuestionPostUpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionPostSubmitEventCopyWith<$Res>
    implements $QuestionPostEventCopyWith<$Res> {
  factory _$$QuestionPostSubmitEventCopyWith(_$QuestionPostSubmitEvent value,
          $Res Function(_$QuestionPostSubmitEvent) then) =
      __$$QuestionPostSubmitEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionForm questionForm});

  @override
  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class __$$QuestionPostSubmitEventCopyWithImpl<$Res>
    extends _$QuestionPostEventCopyWithImpl<$Res, _$QuestionPostSubmitEvent>
    implements _$$QuestionPostSubmitEventCopyWith<$Res> {
  __$$QuestionPostSubmitEventCopyWithImpl(_$QuestionPostSubmitEvent _value,
      $Res Function(_$QuestionPostSubmitEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionForm = null,
  }) {
    return _then(_$QuestionPostSubmitEvent(
      questionForm: null == questionForm
          ? _value.questionForm
          : questionForm // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
    ));
  }
}

/// @nodoc

class _$QuestionPostSubmitEvent implements QuestionPostSubmitEvent {
  const _$QuestionPostSubmitEvent({required this.questionForm});

  @override
  final QuestionForm questionForm;

  @override
  String toString() {
    return 'QuestionPostEvent.submit(questionForm: $questionForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionPostSubmitEvent &&
            (identical(other.questionForm, questionForm) ||
                other.questionForm == questionForm));
  }

  @override
  int get hashCode => Object.hash(runtimeType, questionForm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionPostSubmitEventCopyWith<_$QuestionPostSubmitEvent> get copyWith =>
      __$$QuestionPostSubmitEventCopyWithImpl<_$QuestionPostSubmitEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, String questionId)
        update,
    required TResult Function(QuestionForm questionForm) submit,
  }) {
    return submit(questionForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionForm questionForm, String questionId)? update,
    TResult? Function(QuestionForm questionForm)? submit,
  }) {
    return submit?.call(questionForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, String questionId)? update,
    TResult Function(QuestionForm questionForm)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(questionForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionPostUpdateEvent value) update,
    required TResult Function(QuestionPostSubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionPostUpdateEvent value)? update,
    TResult? Function(QuestionPostSubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionPostUpdateEvent value)? update,
    TResult Function(QuestionPostSubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class QuestionPostSubmitEvent implements QuestionPostEvent {
  const factory QuestionPostSubmitEvent(
      {required final QuestionForm questionForm}) = _$QuestionPostSubmitEvent;

  @override
  QuestionForm get questionForm;
  @override
  @JsonKey(ignore: true)
  _$$QuestionPostSubmitEventCopyWith<_$QuestionPostSubmitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
