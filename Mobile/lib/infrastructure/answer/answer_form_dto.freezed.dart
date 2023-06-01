// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerFormDto _$AnswerFormDtoFromJson(Map<String, dynamic> json) {
  return _AnswerFormDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerFormDto {
  String get text => throw _privateConstructorUsedError;
  String get image =>
      throw _privateConstructorUsedError; //TODO: Change to image
  bool get anonymous => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerFormDtoCopyWith<AnswerFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFormDtoCopyWith<$Res> {
  factory $AnswerFormDtoCopyWith(
          AnswerFormDto value, $Res Function(AnswerFormDto) then) =
      _$AnswerFormDtoCopyWithImpl<$Res, AnswerFormDto>;
  @useResult
  $Res call(
      {String text,
      String image,
      bool anonymous,
      String author,
      String question});
}

/// @nodoc
class _$AnswerFormDtoCopyWithImpl<$Res, $Val extends AnswerFormDto>
    implements $AnswerFormDtoCopyWith<$Res> {
  _$AnswerFormDtoCopyWithImpl(this._value, this._then);

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
    Object? author = null,
    Object? question = null,
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
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerFormDtoCopyWith<$Res>
    implements $AnswerFormDtoCopyWith<$Res> {
  factory _$$_AnswerFormDtoCopyWith(
          _$_AnswerFormDto value, $Res Function(_$_AnswerFormDto) then) =
      __$$_AnswerFormDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      String image,
      bool anonymous,
      String author,
      String question});
}

/// @nodoc
class __$$_AnswerFormDtoCopyWithImpl<$Res>
    extends _$AnswerFormDtoCopyWithImpl<$Res, _$_AnswerFormDto>
    implements _$$_AnswerFormDtoCopyWith<$Res> {
  __$$_AnswerFormDtoCopyWithImpl(
      _$_AnswerFormDto _value, $Res Function(_$_AnswerFormDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? image = null,
    Object? anonymous = null,
    Object? author = null,
    Object? question = null,
  }) {
    return _then(_$_AnswerFormDto(
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
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerFormDto implements _AnswerFormDto {
  const _$_AnswerFormDto(
      {required this.text,
      required this.image,
      required this.anonymous,
      required this.author,
      required this.question});

  factory _$_AnswerFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerFormDtoFromJson(json);

  @override
  final String text;
  @override
  final String image;
//TODO: Change to image
  @override
  final bool anonymous;
  @override
  final String author;
  @override
  final String question;

  @override
  String toString() {
    return 'AnswerFormDto(text: $text, image: $image, anonymous: $anonymous, author: $author, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerFormDto &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, image, anonymous, author, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerFormDtoCopyWith<_$_AnswerFormDto> get copyWith =>
      __$$_AnswerFormDtoCopyWithImpl<_$_AnswerFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerFormDtoToJson(
      this,
    );
  }
}

abstract class _AnswerFormDto implements AnswerFormDto {
  const factory _AnswerFormDto(
      {required final String text,
      required final String image,
      required final bool anonymous,
      required final String author,
      required final String question}) = _$_AnswerFormDto;

  factory _AnswerFormDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerFormDto.fromJson;

  @override
  String get text;
  @override
  String get image;
  @override //TODO: Change to image
  bool get anonymous;
  @override
  String get author;
  @override
  String get question;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerFormDtoCopyWith<_$_AnswerFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
