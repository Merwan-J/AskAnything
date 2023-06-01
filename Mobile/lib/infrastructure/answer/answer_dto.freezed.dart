// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerDto _$AnswerDtoFromJson(Map<String, dynamic> json) {
  return _AnswerDto.fromJson(json);
}

/// @nodoc
mixin _$AnswerDto {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<dynamic> get likes =>
      throw _privateConstructorUsedError; // TODO: Change to user ids
  List<dynamic> get dislikes =>
      throw _privateConstructorUsedError; // TODO: List of user ids
  String get author => throw _privateConstructorUsedError; // TODO: User id
  String get questionId =>
      throw _privateConstructorUsedError; // TODO: Question id
  bool get anonymous => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerDtoCopyWith<AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerDtoCopyWith<$Res> {
  factory $AnswerDtoCopyWith(AnswerDto value, $Res Function(AnswerDto) then) =
      _$AnswerDtoCopyWithImpl<$Res, AnswerDto>;
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      List<dynamic> likes,
      List<dynamic> dislikes,
      String author,
      String questionId,
      bool anonymous,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$AnswerDtoCopyWithImpl<$Res, $Val extends AnswerDto>
    implements $AnswerDtoCopyWith<$Res> {
  _$AnswerDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? author = null,
    Object? questionId = null,
    Object? anonymous = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$$_AnswerDtoCopyWith<$Res> implements $AnswerDtoCopyWith<$Res> {
  factory _$$_AnswerDtoCopyWith(
          _$_AnswerDto value, $Res Function(_$_AnswerDto) then) =
      __$$_AnswerDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String text,
      String image,
      List<dynamic> likes,
      List<dynamic> dislikes,
      String author,
      String questionId,
      bool anonymous,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_AnswerDtoCopyWithImpl<$Res>
    extends _$AnswerDtoCopyWithImpl<$Res, _$_AnswerDto>
    implements _$$_AnswerDtoCopyWith<$Res> {
  __$$_AnswerDtoCopyWithImpl(
      _$_AnswerDto _value, $Res Function(_$_AnswerDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? image = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? author = null,
    Object? questionId = null,
    Object? anonymous = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_AnswerDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      dislikes: null == dislikes
          ? _value._dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_AnswerDto implements _AnswerDto {
  const _$_AnswerDto(
      {required this.id,
      required this.text,
      required this.image,
      required final List<dynamic> likes,
      required final List<dynamic> dislikes,
      required this.author,
      required this.questionId,
      required this.anonymous,
      required this.createdAt,
      required this.updatedAt})
      : _likes = likes,
        _dislikes = dislikes;

  factory _$_AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerDtoFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final String image;
  final List<dynamic> _likes;
  @override
  List<dynamic> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

// TODO: Change to user ids
  final List<dynamic> _dislikes;
// TODO: Change to user ids
  @override
  List<dynamic> get dislikes {
    if (_dislikes is EqualUnmodifiableListView) return _dislikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikes);
  }

// TODO: List of user ids
  @override
  final String author;
// TODO: User id
  @override
  final String questionId;
// TODO: Question id
  @override
  final bool anonymous;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AnswerDto(id: $id, text: $text, image: $image, likes: $likes, dislikes: $dislikes, author: $author, questionId: $questionId, anonymous: $anonymous, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality().equals(other._likes, _likes) &&
            const DeepCollectionEquality().equals(other._dislikes, _dislikes) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
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
      text,
      image,
      const DeepCollectionEquality().hash(_likes),
      const DeepCollectionEquality().hash(_dislikes),
      author,
      questionId,
      anonymous,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      __$$_AnswerDtoCopyWithImpl<_$_AnswerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerDtoToJson(
      this,
    );
  }
}

abstract class _AnswerDto implements AnswerDto {
  const factory _AnswerDto(
      {required final String id,
      required final String text,
      required final String image,
      required final List<dynamic> likes,
      required final List<dynamic> dislikes,
      required final String author,
      required final String questionId,
      required final bool anonymous,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_AnswerDto;

  factory _AnswerDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerDto.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  String get image;
  @override
  List<dynamic> get likes;
  @override // TODO: Change to user ids
  List<dynamic> get dislikes;
  @override // TODO: List of user ids
  String get author;
  @override // TODO: User id
  String get questionId;
  @override // TODO: Question id
  bool get anonymous;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
