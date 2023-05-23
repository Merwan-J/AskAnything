// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionFormDto _$QuestionFormDtoFromJson(Map<String, dynamic> json) {
  return _QuestionFormDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionFormDto {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get anonymous => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionFormDtoCopyWith<QuestionFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionFormDtoCopyWith<$Res> {
  factory $QuestionFormDtoCopyWith(
          QuestionFormDto value, $Res Function(QuestionFormDto) then) =
      _$QuestionFormDtoCopyWithImpl<$Res, QuestionFormDto>;
  @useResult
  $Res call(
      {String title,
      String description,
      bool anonymous,
      String topic,
      String? image});
}

/// @nodoc
class _$QuestionFormDtoCopyWithImpl<$Res, $Val extends QuestionFormDto>
    implements $QuestionFormDtoCopyWith<$Res> {
  _$QuestionFormDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$_QuestionFormDtoCopyWith<$Res>
    implements $QuestionFormDtoCopyWith<$Res> {
  factory _$$_QuestionFormDtoCopyWith(
          _$_QuestionFormDto value, $Res Function(_$_QuestionFormDto) then) =
      __$$_QuestionFormDtoCopyWithImpl<$Res>;
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
class __$$_QuestionFormDtoCopyWithImpl<$Res>
    extends _$QuestionFormDtoCopyWithImpl<$Res, _$_QuestionFormDto>
    implements _$$_QuestionFormDtoCopyWith<$Res> {
  __$$_QuestionFormDtoCopyWithImpl(
      _$_QuestionFormDto _value, $Res Function(_$_QuestionFormDto) _then)
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
    return _then(_$_QuestionFormDto(
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
@JsonSerializable()
class _$_QuestionFormDto
    with DiagnosticableTreeMixin
    implements _QuestionFormDto {
  const _$_QuestionFormDto(
      {required this.title,
      required this.description,
      required this.anonymous,
      required this.topic,
      this.image});

  factory _$_QuestionFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionFormDtoFromJson(json);

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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionFormDto(title: $title, description: $description, anonymous: $anonymous, topic: $topic, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionFormDto'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('anonymous', anonymous))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionFormDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, anonymous, topic, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionFormDtoCopyWith<_$_QuestionFormDto> get copyWith =>
      __$$_QuestionFormDtoCopyWithImpl<_$_QuestionFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionFormDtoToJson(
      this,
    );
  }
}

abstract class _QuestionFormDto implements QuestionFormDto {
  const factory _QuestionFormDto(
      {required final String title,
      required final String description,
      required final bool anonymous,
      required final String topic,
      final String? image}) = _$_QuestionFormDto;

  factory _QuestionFormDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionFormDto.fromJson;

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
  _$$_QuestionFormDtoCopyWith<_$_QuestionFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
