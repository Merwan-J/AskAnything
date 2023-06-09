// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerForm {
  String get text => throw _privateConstructorUsedError;
  String get image =>
      throw _privateConstructorUsedError; //TODO: Change to image
  bool get anonymous => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerFormCopyWith<AnswerForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFormCopyWith<$Res> {
  factory $AnswerFormCopyWith(
          AnswerForm value, $Res Function(AnswerForm) then) =
      _$AnswerFormCopyWithImpl<$Res, AnswerForm>;
  @useResult
  $Res call(
      {String text,
      String image,
      bool anonymous,
      String question,
      String author});
}

/// @nodoc
class _$AnswerFormCopyWithImpl<$Res, $Val extends AnswerForm>
    implements $AnswerFormCopyWith<$Res> {
  _$AnswerFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
    Object? anonymous = null,
    Object? question = null,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerFormCopyWith<$Res>
    implements $AnswerFormCopyWith<$Res> {
  factory _$$_AnswerFormCopyWith(
          _$_AnswerForm value, $Res Function(_$_AnswerForm) then) =
      __$$_AnswerFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String image,
      bool anonymous,
      String question,
      String author});
}

/// @nodoc
class __$$_AnswerFormCopyWithImpl<$Res>
    extends _$AnswerFormCopyWithImpl<$Res, _$_AnswerForm>
    implements _$$_AnswerFormCopyWith<$Res> {
  __$$_AnswerFormCopyWithImpl(
      _$_AnswerForm _value, $Res Function(_$_AnswerForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
    Object? anonymous = null,
    Object? question = null,
    Object? author = null,
  }) {
    return _then(_$_AnswerForm(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnswerForm implements _AnswerForm {
  _$_AnswerForm(
      {required this.text,
      required this.image,
      required this.anonymous,
      required this.question,
      required this.author});

  @override
  final String text;
  @override
  final String image;
//TODO: Change to image
  @override
  final bool anonymous;
  @override
  final String question;
  @override
  final String author;

  @override
  String toString() {
    return 'AnswerForm(text: $text, image: $image, anonymous: $anonymous, question: $question, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerForm &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.author, author) || other.author == author));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, text, image, anonymous, question, author);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerFormCopyWith<_$_AnswerForm> get copyWith =>
      __$$_AnswerFormCopyWithImpl<_$_AnswerForm>(this, _$identity);
}

abstract class _AnswerForm implements AnswerForm {
  factory _AnswerForm(
      {required final String text,
      required final String image,
      required final bool anonymous,
      required final String question,
      required final String author}) = _$_AnswerForm;

  @override
  String get text;
  @override
  String get image;
  @override //TODO: Change to image
  bool get anonymous;
  @override
  String get question;
  @override
  String get author;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerFormCopyWith<_$_AnswerForm> get copyWith =>
      throw _privateConstructorUsedError;
}
