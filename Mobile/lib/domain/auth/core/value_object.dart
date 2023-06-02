import 'package:dartz/dartz.dart';
import 'package:askanything/domain/core/value_failure.dart';

abstract class ValueObject<T> {
  final T value;

  const ValueObject(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject($value)';
}
