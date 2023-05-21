// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerFailure<T> {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyError,
    required TResult Function(String failedValue) exceedingLengthError,
    required TResult Function(String failedValue) serverError,
    required TResult Function(String failedValue) notFoundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyError,
    TResult? Function(String failedValue)? exceedingLengthError,
    TResult? Function(String failedValue)? serverError,
    TResult? Function(String failedValue)? notFoundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyError,
    TResult Function(String failedValue)? exceedingLengthError,
    TResult Function(String failedValue)? serverError,
    TResult Function(String failedValue)? notFoundError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyError<T> value) emptyError,
    required TResult Function(ExceedingLengthError<T> value)
        exceedingLengthError,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_NotFoundError<T> value) notFoundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyError<T> value)? emptyError,
    TResult? Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_NotFoundError<T> value)? notFoundError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyError<T> value)? emptyError,
    TResult Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_NotFoundError<T> value)? notFoundError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerFailureCopyWith<T, AnswerFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerFailureCopyWith<T, $Res> {
  factory $AnswerFailureCopyWith(
          AnswerFailure<T> value, $Res Function(AnswerFailure<T>) then) =
      _$AnswerFailureCopyWithImpl<T, $Res, AnswerFailure<T>>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class _$AnswerFailureCopyWithImpl<T, $Res, $Val extends AnswerFailure<T>>
    implements $AnswerFailureCopyWith<T, $Res> {
  _$AnswerFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmptyErrorCopyWith<T, $Res>
    implements $AnswerFailureCopyWith<T, $Res> {
  factory _$$EmptyErrorCopyWith(
          _$EmptyError<T> value, $Res Function(_$EmptyError<T>) then) =
      __$$EmptyErrorCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$EmptyErrorCopyWithImpl<T, $Res>
    extends _$AnswerFailureCopyWithImpl<T, $Res, _$EmptyError<T>>
    implements _$$EmptyErrorCopyWith<T, $Res> {
  __$$EmptyErrorCopyWithImpl(
      _$EmptyError<T> _value, $Res Function(_$EmptyError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$EmptyError<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmptyError<T> with DiagnosticableTreeMixin implements EmptyError<T> {
  const _$EmptyError({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerFailure<$T>.emptyError(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerFailure<$T>.emptyError'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyError<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyErrorCopyWith<T, _$EmptyError<T>> get copyWith =>
      __$$EmptyErrorCopyWithImpl<T, _$EmptyError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyError,
    required TResult Function(String failedValue) exceedingLengthError,
    required TResult Function(String failedValue) serverError,
    required TResult Function(String failedValue) notFoundError,
  }) {
    return emptyError(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyError,
    TResult? Function(String failedValue)? exceedingLengthError,
    TResult? Function(String failedValue)? serverError,
    TResult? Function(String failedValue)? notFoundError,
  }) {
    return emptyError?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyError,
    TResult Function(String failedValue)? exceedingLengthError,
    TResult Function(String failedValue)? serverError,
    TResult Function(String failedValue)? notFoundError,
    required TResult orElse(),
  }) {
    if (emptyError != null) {
      return emptyError(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyError<T> value) emptyError,
    required TResult Function(ExceedingLengthError<T> value)
        exceedingLengthError,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_NotFoundError<T> value) notFoundError,
  }) {
    return emptyError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyError<T> value)? emptyError,
    TResult? Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_NotFoundError<T> value)? notFoundError,
  }) {
    return emptyError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyError<T> value)? emptyError,
    TResult Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_NotFoundError<T> value)? notFoundError,
    required TResult orElse(),
  }) {
    if (emptyError != null) {
      return emptyError(this);
    }
    return orElse();
  }
}

abstract class EmptyError<T> implements AnswerFailure<T> {
  const factory EmptyError({required final String failedValue}) =
      _$EmptyError<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyErrorCopyWith<T, _$EmptyError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExceedingLengthErrorCopyWith<T, $Res>
    implements $AnswerFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthErrorCopyWith(_$ExceedingLengthError<T> value,
          $Res Function(_$ExceedingLengthError<T>) then) =
      __$$ExceedingLengthErrorCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$ExceedingLengthErrorCopyWithImpl<T, $Res>
    extends _$AnswerFailureCopyWithImpl<T, $Res, _$ExceedingLengthError<T>>
    implements _$$ExceedingLengthErrorCopyWith<T, $Res> {
  __$$ExceedingLengthErrorCopyWithImpl(_$ExceedingLengthError<T> _value,
      $Res Function(_$ExceedingLengthError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$ExceedingLengthError<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthError<T>
    with DiagnosticableTreeMixin
    implements ExceedingLengthError<T> {
  const _$ExceedingLengthError({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerFailure<$T>.exceedingLengthError(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AnswerFailure<$T>.exceedingLengthError'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthError<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthErrorCopyWith<T, _$ExceedingLengthError<T>> get copyWith =>
      __$$ExceedingLengthErrorCopyWithImpl<T, _$ExceedingLengthError<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyError,
    required TResult Function(String failedValue) exceedingLengthError,
    required TResult Function(String failedValue) serverError,
    required TResult Function(String failedValue) notFoundError,
  }) {
    return exceedingLengthError(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyError,
    TResult? Function(String failedValue)? exceedingLengthError,
    TResult? Function(String failedValue)? serverError,
    TResult? Function(String failedValue)? notFoundError,
  }) {
    return exceedingLengthError?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyError,
    TResult Function(String failedValue)? exceedingLengthError,
    TResult Function(String failedValue)? serverError,
    TResult Function(String failedValue)? notFoundError,
    required TResult orElse(),
  }) {
    if (exceedingLengthError != null) {
      return exceedingLengthError(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyError<T> value) emptyError,
    required TResult Function(ExceedingLengthError<T> value)
        exceedingLengthError,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_NotFoundError<T> value) notFoundError,
  }) {
    return exceedingLengthError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyError<T> value)? emptyError,
    TResult? Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_NotFoundError<T> value)? notFoundError,
  }) {
    return exceedingLengthError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyError<T> value)? emptyError,
    TResult Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_NotFoundError<T> value)? notFoundError,
    required TResult orElse(),
  }) {
    if (exceedingLengthError != null) {
      return exceedingLengthError(this);
    }
    return orElse();
  }
}

abstract class ExceedingLengthError<T> implements AnswerFailure<T> {
  const factory ExceedingLengthError({required final String failedValue}) =
      _$ExceedingLengthError<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthErrorCopyWith<T, _$ExceedingLengthError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<T, $Res>
    implements $AnswerFailureCopyWith<T, $Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError<T> value, $Res Function(_$_ServerError<T>) then) =
      __$$_ServerErrorCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<T, $Res>
    extends _$AnswerFailureCopyWithImpl<T, $Res, _$_ServerError<T>>
    implements _$$_ServerErrorCopyWith<T, $Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError<T> _value, $Res Function(_$_ServerError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$_ServerError<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError<T>
    with DiagnosticableTreeMixin
    implements _ServerError<T> {
  const _$_ServerError({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerFailure<$T>.serverError(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerFailure<$T>.serverError'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<T, _$_ServerError<T>> get copyWith =>
      __$$_ServerErrorCopyWithImpl<T, _$_ServerError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyError,
    required TResult Function(String failedValue) exceedingLengthError,
    required TResult Function(String failedValue) serverError,
    required TResult Function(String failedValue) notFoundError,
  }) {
    return serverError(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyError,
    TResult? Function(String failedValue)? exceedingLengthError,
    TResult? Function(String failedValue)? serverError,
    TResult? Function(String failedValue)? notFoundError,
  }) {
    return serverError?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyError,
    TResult Function(String failedValue)? exceedingLengthError,
    TResult Function(String failedValue)? serverError,
    TResult Function(String failedValue)? notFoundError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyError<T> value) emptyError,
    required TResult Function(ExceedingLengthError<T> value)
        exceedingLengthError,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_NotFoundError<T> value) notFoundError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyError<T> value)? emptyError,
    TResult? Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_NotFoundError<T> value)? notFoundError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyError<T> value)? emptyError,
    TResult Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_NotFoundError<T> value)? notFoundError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError<T> implements AnswerFailure<T> {
  const factory _ServerError({required final String failedValue}) =
      _$_ServerError<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<T, _$_ServerError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundErrorCopyWith<T, $Res>
    implements $AnswerFailureCopyWith<T, $Res> {
  factory _$$_NotFoundErrorCopyWith(
          _$_NotFoundError<T> value, $Res Function(_$_NotFoundError<T>) then) =
      __$$_NotFoundErrorCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$_NotFoundErrorCopyWithImpl<T, $Res>
    extends _$AnswerFailureCopyWithImpl<T, $Res, _$_NotFoundError<T>>
    implements _$$_NotFoundErrorCopyWith<T, $Res> {
  __$$_NotFoundErrorCopyWithImpl(
      _$_NotFoundError<T> _value, $Res Function(_$_NotFoundError<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$_NotFoundError<T>(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotFoundError<T>
    with DiagnosticableTreeMixin
    implements _NotFoundError<T> {
  const _$_NotFoundError({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerFailure<$T>.notFoundError(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerFailure<$T>.notFoundError'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFoundError<T> &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundErrorCopyWith<T, _$_NotFoundError<T>> get copyWith =>
      __$$_NotFoundErrorCopyWithImpl<T, _$_NotFoundError<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) emptyError,
    required TResult Function(String failedValue) exceedingLengthError,
    required TResult Function(String failedValue) serverError,
    required TResult Function(String failedValue) notFoundError,
  }) {
    return notFoundError(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? emptyError,
    TResult? Function(String failedValue)? exceedingLengthError,
    TResult? Function(String failedValue)? serverError,
    TResult? Function(String failedValue)? notFoundError,
  }) {
    return notFoundError?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? emptyError,
    TResult Function(String failedValue)? exceedingLengthError,
    TResult Function(String failedValue)? serverError,
    TResult Function(String failedValue)? notFoundError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmptyError<T> value) emptyError,
    required TResult Function(ExceedingLengthError<T> value)
        exceedingLengthError,
    required TResult Function(_ServerError<T> value) serverError,
    required TResult Function(_NotFoundError<T> value) notFoundError,
  }) {
    return notFoundError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmptyError<T> value)? emptyError,
    TResult? Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult? Function(_ServerError<T> value)? serverError,
    TResult? Function(_NotFoundError<T> value)? notFoundError,
  }) {
    return notFoundError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmptyError<T> value)? emptyError,
    TResult Function(ExceedingLengthError<T> value)? exceedingLengthError,
    TResult Function(_ServerError<T> value)? serverError,
    TResult Function(_NotFoundError<T> value)? notFoundError,
    required TResult orElse(),
  }) {
    if (notFoundError != null) {
      return notFoundError(this);
    }
    return orElse();
  }
}

abstract class _NotFoundError<T> implements AnswerFailure<T> {
  const factory _NotFoundError({required final String failedValue}) =
      _$_NotFoundError<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_NotFoundErrorCopyWith<T, _$_NotFoundError<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
