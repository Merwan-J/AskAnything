// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionForm {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get anonymous => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionFormCopyWith<QuestionForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionFormCopyWith<$Res> {
  factory $QuestionFormCopyWith(
          QuestionForm value, $Res Function(QuestionForm) then) =
      _$QuestionFormCopyWithImpl<$Res, QuestionForm>;
  @useResult
  $Res call(
      {String title,
      String description,
      bool anonymous,
      String topic,
      String? image});
}

/// @nodoc
class _$QuestionFormCopyWithImpl<$Res, $Val extends QuestionForm>
    implements $QuestionFormCopyWith<$Res> {
  _$QuestionFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? anonymous = null,
    Object? topic = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionFormCopyWith<$Res>
    implements $QuestionFormCopyWith<$Res> {
  factory _$$_QuestionFormCopyWith(
          _$_QuestionForm value, $Res Function(_$_QuestionForm) then) =
      __$$_QuestionFormCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      bool anonymous,
      String topic,
      String? image});
}

/// @nodoc
class __$$_QuestionFormCopyWithImpl<$Res>
    extends _$QuestionFormCopyWithImpl<$Res, _$_QuestionForm>
    implements _$$_QuestionFormCopyWith<$Res> {
  __$$_QuestionFormCopyWithImpl(
      _$_QuestionForm _value, $Res Function(_$_QuestionForm) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? anonymous = null,
    Object? topic = null,
    Object? image = freezed,
  }) {
    return _then(_$_QuestionForm(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_QuestionForm implements _QuestionForm {
  const _$_QuestionForm(
      {required this.title,
      required this.description,
      required this.anonymous,
      required this.topic,
      this.image});

  @override
  final String title;
  @override
  final String description;
  @override
  final bool anonymous;
  @override
  final String topic;
  @override
  final String? image;

  @override
  String toString() {
    return 'QuestionForm(title: $title, description: $description, anonymous: $anonymous, topic: $topic, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionForm &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, anonymous, topic, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionFormCopyWith<_$_QuestionForm> get copyWith =>
      __$$_QuestionFormCopyWithImpl<_$_QuestionForm>(this, _$identity);
}

abstract class _QuestionForm implements QuestionForm {
  const factory _QuestionForm(
      {required final String title,
      required final String description,
      required final bool anonymous,
      required final String topic,
      final String? image}) = _$_QuestionForm;

  @override
  String get title;
  @override
  String get description;
  @override
  bool get anonymous;
  @override
  String get topic;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionFormCopyWith<_$_QuestionForm> get copyWith =>
      throw _privateConstructorUsedError;
}
