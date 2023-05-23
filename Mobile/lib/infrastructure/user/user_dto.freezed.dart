// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  List<String> get questionIds => throw _privateConstructorUsedError;
  List<String> get answerIds => throw _privateConstructorUsedError;
  int get reputation => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get dislikes => throw _privateConstructorUsedError;
  Map<String, List<String>> get bookmarks => throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  List<String> get followings => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res, UserDTO>;
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String password,
      String? profilePic,
      List<String> questionIds,
      List<String> answerIds,
      int reputation,
      int likes,
      int dislikes,
      Map<String, List<String>> bookmarks,
      List<String> followers,
      List<String> followings,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res, $Val extends UserDTO>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? profilePic = freezed,
    Object? questionIds = null,
    Object? answerIds = null,
    Object? reputation = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? bookmarks = null,
    Object? followers = null,
    Object? followings = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      questionIds: null == questionIds
          ? _value.questionIds
          : questionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answerIds: null == answerIds
          ? _value.answerIds
          : answerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int,
      bookmarks: null == bookmarks
          ? _value.bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followings: null == followings
          ? _value.followings
          : followings // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String email,
      String password,
      String? profilePic,
      List<String> questionIds,
      List<String> answerIds,
      int reputation,
      int likes,
      int dislikes,
      Map<String, List<String>> bookmarks,
      List<String> followers,
      List<String> followings,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res>
    extends _$UserDTOCopyWithImpl<$Res, _$_UserDTO>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = null,
    Object? profilePic = freezed,
    Object? questionIds = null,
    Object? answerIds = null,
    Object? reputation = null,
    Object? likes = null,
    Object? dislikes = null,
    Object? bookmarks = null,
    Object? followers = null,
    Object? followings = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_UserDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      questionIds: null == questionIds
          ? _value._questionIds
          : questionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      answerIds: null == answerIds
          ? _value._answerIds
          : answerIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reputation: null == reputation
          ? _value.reputation
          : reputation // ignore: cast_nullable_to_non_nullable
              as int,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      dislikes: null == dislikes
          ? _value.dislikes
          : dislikes // ignore: cast_nullable_to_non_nullable
              as int,
      bookmarks: null == bookmarks
          ? _value._bookmarks
          : bookmarks // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      followings: null == followings
          ? _value._followings
          : followings // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
class _$_UserDTO implements _UserDTO {
  const _$_UserDTO(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.profilePic,
      required final List<String> questionIds,
      required final List<String> answerIds,
      required this.reputation,
      required this.likes,
      required this.dislikes,
      required final Map<String, List<String>> bookmarks,
      required final List<String> followers,
      required final List<String> followings,
      required this.createdAt,
      required this.updatedAt})
      : _questionIds = questionIds,
        _answerIds = answerIds,
        _bookmarks = bookmarks,
        _followers = followers,
        _followings = followings;

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String password;
  @override
  final String? profilePic;
  final List<String> _questionIds;
  @override
  List<String> get questionIds {
    if (_questionIds is EqualUnmodifiableListView) return _questionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionIds);
  }

  final List<String> _answerIds;
  @override
  List<String> get answerIds {
    if (_answerIds is EqualUnmodifiableListView) return _answerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answerIds);
  }

  @override
  final int reputation;
  @override
  final int likes;
  @override
  final int dislikes;
  final Map<String, List<String>> _bookmarks;
  @override
  Map<String, List<String>> get bookmarks {
    if (_bookmarks is EqualUnmodifiableMapView) return _bookmarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bookmarks);
  }

  final List<String> _followers;
  @override
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<String> _followings;
  @override
  List<String> get followings {
    if (_followings is EqualUnmodifiableListView) return _followings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followings);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'UserDTO(id: $id, name: $name, email: $email, password: $password, profilePic: $profilePic, questionIds: $questionIds, answerIds: $answerIds, reputation: $reputation, likes: $likes, dislikes: $dislikes, bookmarks: $bookmarks, followers: $followers, followings: $followings, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            const DeepCollectionEquality()
                .equals(other._questionIds, _questionIds) &&
            const DeepCollectionEquality()
                .equals(other._answerIds, _answerIds) &&
            (identical(other.reputation, reputation) ||
                other.reputation == reputation) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.dislikes, dislikes) ||
                other.dislikes == dislikes) &&
            const DeepCollectionEquality()
                .equals(other._bookmarks, _bookmarks) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._followings, _followings) &&
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
      name,
      email,
      password,
      profilePic,
      const DeepCollectionEquality().hash(_questionIds),
      const DeepCollectionEquality().hash(_answerIds),
      reputation,
      likes,
      dislikes,
      const DeepCollectionEquality().hash(_bookmarks),
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_followings),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {required final String id,
      required final String name,
      required final String email,
      required final String password,
      required final String? profilePic,
      required final List<String> questionIds,
      required final List<String> answerIds,
      required final int reputation,
      required final int likes,
      required final int dislikes,
      required final Map<String, List<String>> bookmarks,
      required final List<String> followers,
      required final List<String> followings,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get email;
  @override
  String get password;
  @override
  String? get profilePic;
  @override
  List<String> get questionIds;
  @override
  List<String> get answerIds;
  @override
  int get reputation;
  @override
  int get likes;
  @override
  int get dislikes;
  @override
  Map<String, List<String>> get bookmarks;
  @override
  List<String> get followers;
  @override
  List<String> get followings;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
