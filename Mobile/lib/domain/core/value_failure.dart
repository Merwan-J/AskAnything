class ValueFailure<T> {
  final String message;

  ValueFailure(this.message);

  @override
  String toString() => message;
}
