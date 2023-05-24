// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_edit_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionEditEvent {
  QuestionForm get questionForm => throw _privateConstructorUsedError;
  String get questionId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, String questionId)
        edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionForm questionForm, String questionId)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, String questionId)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditQuestionEvent value) edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditQuestionEvent value)? edit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditQuestionEvent value)? edit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionEditEventCopyWith<QuestionEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEditEventCopyWith<$Res> {
  factory $QuestionEditEventCopyWith(
          QuestionEditEvent value, $Res Function(QuestionEditEvent) then) =
      _$QuestionEditEventCopyWithImpl<$Res, QuestionEditEvent>;
  @useResult
  $Res call({QuestionForm questionForm, String questionId});

  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class _$QuestionEditEventCopyWithImpl<$Res, $Val extends QuestionEditEvent>
    implements $QuestionEditEventCopyWith<$Res> {
  _$QuestionEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionForm = null,
    Object? questionId = null,
  }) {
    return _then(_value.copyWith(
      questionForm: null == questionForm
          ? _value.questionForm
          : questionForm // ignore: cast_nullable_to_non_nullable
              as QuestionForm,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$EditQuestionEventCopyWith<$Res>
    implements $QuestionEditEventCopyWith<$Res> {
  factory _$$EditQuestionEventCopyWith(
          _$EditQuestionEvent value, $Res Function(_$EditQuestionEvent) then) =
      __$$EditQuestionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionForm questionForm, String questionId});

  @override
  $QuestionFormCopyWith<$Res> get questionForm;
}

/// @nodoc
class __$$EditQuestionEventCopyWithImpl<$Res>
    extends _$QuestionEditEventCopyWithImpl<$Res, _$EditQuestionEvent>
    implements _$$EditQuestionEventCopyWith<$Res> {
  __$$EditQuestionEventCopyWithImpl(
      _$EditQuestionEvent _value, $Res Function(_$EditQuestionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questionForm = null,
    Object? questionId = null,
  }) {
    return _then(_$EditQuestionEvent(
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

class _$EditQuestionEvent implements EditQuestionEvent {
  const _$EditQuestionEvent(
      {required this.questionForm, required this.questionId});

  @override
  final QuestionForm questionForm;
  @override
  final String questionId;

  @override
  String toString() {
    return 'QuestionEditEvent.edit(questionForm: $questionForm, questionId: $questionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditQuestionEvent &&
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
  _$$EditQuestionEventCopyWith<_$EditQuestionEvent> get copyWith =>
      __$$EditQuestionEventCopyWithImpl<_$EditQuestionEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(QuestionForm questionForm, String questionId)
        edit,
  }) {
    return edit(questionForm, questionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(QuestionForm questionForm, String questionId)? edit,
  }) {
    return edit?.call(questionForm, questionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(QuestionForm questionForm, String questionId)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(questionForm, questionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditQuestionEvent value) edit,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditQuestionEvent value)? edit,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditQuestionEvent value)? edit,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditQuestionEvent implements QuestionEditEvent {
  const factory EditQuestionEvent(
      {required final QuestionForm questionForm,
      required final String questionId}) = _$EditQuestionEvent;

  @override
  QuestionForm get questionForm;
  @override
  String get questionId;
  @override
  @JsonKey(ignore: true)
  _$$EditQuestionEventCopyWith<_$EditQuestionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
