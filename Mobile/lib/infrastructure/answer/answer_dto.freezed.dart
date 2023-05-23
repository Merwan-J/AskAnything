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
  String get ids => throw _privateConstructorUsedError;
  String get texts => throw _privateConstructorUsedError;
  String get images => throw _privateConstructorUsedError;
  List<String> get likess =>
      throw _privateConstructorUsedError; // TODO: Change to user ids
  List<String> get dislikess =>
      throw _privateConstructorUsedError; // TODO: List of user ids
  String get authors => throw _privateConstructorUsedError; // TODO: User id
  String get questionId =>
      throw _privateConstructorUsedError; // TODO: Question id
  bool get anonymous => throw _privateConstructorUsedError;
  DateTime get createdAts => throw _privateConstructorUsedError;
  DateTime get updatedAts => throw _privateConstructorUsedError;

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
      {String ids,
      String texts,
      String images,
      List<String> likess,
      List<String> dislikess,
      String authors,
      String questionId,
      bool anonymous,
      DateTime createdAts,
      DateTime updatedAts});
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
    Object? ids = null,
    Object? texts = null,
    Object? images = null,
    Object? likess = null,
    Object? dislikess = null,
    Object? authors = null,
    Object? questionId = null,
    Object? anonymous = null,
    Object? createdAts = null,
    Object? updatedAts = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      likess: null == likess
          ? _value.likess
          : likess // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dislikess: null == dislikess
          ? _value.dislikess
          : dislikess // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAts: null == createdAts
          ? _value.createdAts
          : createdAts // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAts: null == updatedAts
          ? _value.updatedAts
          : updatedAts // ignore: cast_nullable_to_non_nullable
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
      {String ids,
      String texts,
      String images,
      List<String> likess,
      List<String> dislikess,
      String authors,
      String questionId,
      bool anonymous,
      DateTime createdAts,
      DateTime updatedAts});
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
    Object? ids = null,
    Object? texts = null,
    Object? images = null,
    Object? likess = null,
    Object? dislikess = null,
    Object? authors = null,
    Object? questionId = null,
    Object? anonymous = null,
    Object? createdAts = null,
    Object? updatedAts = null,
  }) {
    return _then(_$_AnswerDto(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as String,
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
      likess: null == likess
          ? _value._likess
          : likess // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dislikess: null == dislikess
          ? _value._dislikess
          : dislikess // ignore: cast_nullable_to_non_nullable
              as List<String>,
      authors: null == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as String,
      questionId: null == questionId
          ? _value.questionId
          : questionId // ignore: cast_nullable_to_non_nullable
              as String,
      anonymous: null == anonymous
          ? _value.anonymous
          : anonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAts: null == createdAts
          ? _value.createdAts
          : createdAts // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAts: null == updatedAts
          ? _value.updatedAts
          : updatedAts // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerDto implements _AnswerDto {
  const _$_AnswerDto(
      {required this.ids,
      required this.texts,
      required this.images,
      required final List<String> likess,
      required final List<String> dislikess,
      required this.authors,
      required this.questionId,
      required this.anonymous,
      required this.createdAts,
      required this.updatedAts})
      : _likess = likess,
        _dislikess = dislikess;

  factory _$_AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerDtoFromJson(json);

  @override
  final String ids;
  @override
  final String texts;
  @override
  final String images;
  final List<String> _likess;
  @override
  List<String> get likess {
    if (_likess is EqualUnmodifiableListView) return _likess;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likess);
  }

// TODO: Change to user ids
  final List<String> _dislikess;
// TODO: Change to user ids
  @override
  List<String> get dislikess {
    if (_dislikess is EqualUnmodifiableListView) return _dislikess;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dislikess);
  }

// TODO: List of user ids
  @override
  final String authors;
// TODO: User id
  @override
  final String questionId;
// TODO: Question id
  @override
  final bool anonymous;
  @override
  final DateTime createdAts;
  @override
  final DateTime updatedAts;

  @override
  String toString() {
    return 'AnswerDto(ids: $ids, texts: $texts, images: $images, likess: $likess, dislikess: $dislikess, authors: $authors, questionId: $questionId, anonymous: $anonymous, createdAts: $createdAts, updatedAts: $updatedAts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerDto &&
            (identical(other.ids, ids) || other.ids == ids) &&
            (identical(other.texts, texts) || other.texts == texts) &&
            (identical(other.images, images) || other.images == images) &&
            const DeepCollectionEquality().equals(other._likess, _likess) &&
            const DeepCollectionEquality()
                .equals(other._dislikess, _dislikess) &&
            (identical(other.authors, authors) || other.authors == authors) &&
            (identical(other.questionId, questionId) ||
                other.questionId == questionId) &&
            (identical(other.anonymous, anonymous) ||
                other.anonymous == anonymous) &&
            (identical(other.createdAts, createdAts) ||
                other.createdAts == createdAts) &&
            (identical(other.updatedAts, updatedAts) ||
                other.updatedAts == updatedAts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ids,
      texts,
      images,
      const DeepCollectionEquality().hash(_likess),
      const DeepCollectionEquality().hash(_dislikess),
      authors,
      questionId,
      anonymous,
      createdAts,
      updatedAts);

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
      {required final String ids,
      required final String texts,
      required final String images,
      required final List<String> likess,
      required final List<String> dislikess,
      required final String authors,
      required final String questionId,
      required final bool anonymous,
      required final DateTime createdAts,
      required final DateTime updatedAts}) = _$_AnswerDto;

  factory _AnswerDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerDto.fromJson;

  @override
  String get ids;
  @override
  String get texts;
  @override
  String get images;
  @override
  List<String> get likess;
  @override // TODO: Change to user ids
  List<String> get dislikess;
  @override // TODO: List of user ids
  String get authors;
  @override // TODO: User id
  String get questionId;
  @override // TODO: Question id
  bool get anonymous;
  @override
  DateTime get createdAts;
  @override
  DateTime get updatedAts;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerDtoCopyWith<_$_AnswerDto> get copyWith =>
      throw _privateConstructorUsedError;
}
