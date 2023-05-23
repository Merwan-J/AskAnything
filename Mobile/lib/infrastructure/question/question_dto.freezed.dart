// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDto _$QuestionDtoFromJson(Map<String, dynamic> json) {
  return _QuestionDto.fromJson(json);
}

/// @nodoc
mixin _$QuestionDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; //TODO: Replace string with User model class
  String get author => throw _privateConstructorUsedError;
  bool get anonymous =>
      throw _privateConstructorUsedError; // TODO: Replace string with Answer model class
  List<String> get answers => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  List<String> get likes => throw _privateConstructorUsedError;
  List<String> get dislikes => throw _privateConstructorUsedError;
  String? get image =>
      throw _privateConstructorUsedError; // TODO: Convert to DateTime
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDtoCopyWith<QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDtoCopyWith<$Res> {
  factory $QuestionDtoCopyWith(
          QuestionDto value, $Res Function(QuestionDto) then) =
      _$QuestionDtoCopyWithImpl<$Res, QuestionDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String author,
      bool anonymous,
      List<String> answers,
      String topic,
      List<String> likes,
      List<String> dislikes,
      String? image,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$QuestionDtoCopyWithImpl<$Res, $Val extends QuestionDto>
    implements $QuestionDtoCopyWith<$Res> {
  _$QuestionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? anonymous = null,
    Object? answers = null,
    Object? topic = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      answers: null == answers
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionDtoCopyWith<$Res>
    implements $QuestionDtoCopyWith<$Res> {
  factory _$$_QuestionDtoCopyWith(
          _$_QuestionDto value, $Res Function(_$_QuestionDto) then) =
      __$$_QuestionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String author,
      bool anonymous,
      List<String> answers,
      String topic,
      List<String> likes,
      List<String> dislikes,
      String? image,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_QuestionDtoCopyWithImpl<$Res>
    extends _$QuestionDtoCopyWithImpl<$Res, _$_QuestionDto>
    implements _$$_QuestionDtoCopyWith<$Res> {
  __$$_QuestionDtoCopyWithImpl(
      _$_QuestionDto _value, $Res Function(_$_QuestionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? author = null,
    Object? anonymous = null,
    Object? answers = null,
    Object? topic = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? image = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_QuestionDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      answers: null == answers
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dislikes: null == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDto with DiagnosticableTreeMixin implements _QuestionDto {
  const _$_QuestionDto(
      {required this.id,
      required this.title,
      required this.description,
      required this.author,
      required this.anonymous,
      required final List<String> answers,
      required this.topic,
      required final List<String> likes,
      required final List<String> dislikes,
      this.image,
      required this.createdAt,
      required this.updatedAt})
      : _answers = answers,
        _likes = likes,
        _dislikes = dislikes;

  factory _$_QuestionDto.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String description;
//TODO: Replace string with User model class
  @override
  final String author;
  @override
  final bool anonymous;
// TODO: Replace string with Answer model class
  final List<String> _answers;
// TODO: Replace string with Answer model class
  @override
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String topic;
  final List<String> _likes;
  @override
  List<String> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<String> _dislikes;
  @override
  List<String> get dislikes {
    if (_dislikes is EqualUnmodifiableListView) return _dislikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikes);
  }

  @override
  final String? image;
// TODO: Convert to DateTime
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionDto(id: $id, title: $title, description: $description, author: $author, anonymous: $anonymous, answers: $answers, topic: $topic, likes: $likes, dislikes: $dislikes, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('anonymous', anonymous))
      ..add(DiagnosticsProperty('answers', answers))
      ..add(DiagnosticsProperty('topic', topic))
      ..add(DiagnosticsProperty('likes', likes))
      ..add(DiagnosticsProperty('dislikes', dislikes))
      ..add(DiagnosticsProperty('image', image))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._dislikes, _dislikes) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      author,
      anonymous,
      const DeepCollectionEquality().hash(_answers),
      topic,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_dislikes),
      image,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      __$$_QuestionDtoCopyWithImpl<_$_QuestionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDtoToJson(
      this,
    );
  }
}

abstract class _QuestionDto implements QuestionDto {
  const factory _QuestionDto(
      {required final String id,
      required final String title,
      required final String description,
      required final String author,
      required final bool anonymous,
      required final List<String> answers,
      required final String topic,
      required final List<String> likes,
      required final List<String> dislikes,
      final String? image,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_QuestionDto;

  factory _QuestionDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get description;
  @override //TODO: Replace string with User model class
  String get author;
  @override
  bool get anonymous;
  @override // TODO: Replace string with Answer model class
  List<String> get answers;
  @override
  String get topic;
  @override
  List<String> get likes;
  @override
  List<String> get dislikes;
  @override
  String? get image;
  @override // TODO: Convert to DateTime
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDtoCopyWith<_$_QuestionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
