// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionEntity _$QuestionEntityFromJson(Map<String, dynamic> json) {
  return _QuestionEntity.fromJson(json);
}

/// @nodoc
mixin _$QuestionEntity {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description =>
      throw _privateConstructorUsedError; //TODO: Replace string with User model class
  String get author => throw _privateConstructorUsedError;
  bool get anonymous =>
      throw _privateConstructorUsedError; // TODO: Replace string with Answer model class
  List<dynamic> get answers => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  List<dynamic> get likes => throw _privateConstructorUsedError;
  List<dynamic> get dislikes => throw _privateConstructorUsedError;
  String? get image =>
      throw _privateConstructorUsedError; // TODO: Convert to DateTime
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionEntityCopyWith<QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEntityCopyWith<$Res> {
  factory $QuestionEntityCopyWith(
          QuestionEntity value, $Res Function(QuestionEntity) then) =
      _$QuestionEntityCopyWithImpl<$Res, QuestionEntity>;
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String author,
      bool anonymous,
      List<dynamic> answers,
      String topic,
      List<dynamic> likes,
      List<dynamic> dislikes,
      String? image,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res, $Val extends QuestionEntity>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._value, this._then);

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
              as List<dynamic>,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
abstract class _$$_QuestionEntityCopyWith<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  factory _$$_QuestionEntityCopyWith(
          _$_QuestionEntity value, $Res Function(_$_QuestionEntity) then) =
      __$$_QuestionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String description,
      String author,
      bool anonymous,
      List<dynamic> answers,
      String topic,
      List<dynamic> likes,
      List<dynamic> dislikes,
      String? image,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_QuestionEntityCopyWithImpl<$Res>
    extends _$QuestionEntityCopyWithImpl<$Res, _$_QuestionEntity>
    implements _$$_QuestionEntityCopyWith<$Res> {
  __$$_QuestionEntityCopyWithImpl(
      _$_QuestionEntity _value, $Res Function(_$_QuestionEntity) _then)
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
    return _then(_$_QuestionEntity(
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
              as List<dynamic>,
      topic: null == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      dislikes: null == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
class _$_QuestionEntity
    with DiagnosticableTreeMixin
    implements _QuestionEntity {
  const _$_QuestionEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.author,
      required this.anonymous,
      required final List<dynamic> answers,
      required this.topic,
      required final List<dynamic> likes,
      required final List<dynamic> dislikes,
      this.image,
      required this.createdAt,
      required this.updatedAt})
      : _answers = answers,
        _likes = likes,
        _dislikes = dislikes;

  factory _$_QuestionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionEntityFromJson(json);

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
  final List<dynamic> _answers;
// TODO: Replace string with Answer model class
  @override
  List<dynamic> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String topic;
  final List<dynamic> _likes;
  @override
  List<dynamic> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  final List<dynamic> _dislikes;
  @override
  List<dynamic> get dislikes {
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
    return 'QuestionEntity(id: $id, title: $title, description: $description, author: $author, anonymous: $anonymous, answers: $answers, topic: $topic, likes: $likes, dislikes: $dislikes, image: $image, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionEntity'))
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
            other is _$_QuestionEntity &&
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
  _$$_QuestionEntityCopyWith<_$_QuestionEntity> get copyWith =>
      __$$_QuestionEntityCopyWithImpl<_$_QuestionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionEntityToJson(
      this,
    );
  }
}

abstract class _QuestionEntity implements QuestionEntity {
  const factory _QuestionEntity(
      {required final String id,
      required final String title,
      required final String description,
      required final String author,
      required final bool anonymous,
      required final List<dynamic> answers,
      required final String topic,
      required final List<dynamic> likes,
      required final List<dynamic> dislikes,
      final String? image,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_QuestionEntity;

  factory _QuestionEntity.fromJson(Map<String, dynamic> json) =
      _$_QuestionEntity.fromJson;

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
  List<dynamic> get answers;
  @override
  String get topic;
  @override
  List<dynamic> get likes;
  @override
  List<dynamic> get dislikes;
  @override
  String? get image;
  @override // TODO: Convert to DateTime
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionEntityCopyWith<_$_QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
