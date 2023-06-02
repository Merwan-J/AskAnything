import 'dart:async';

class CustomTimeoutException extends TimeoutException {
  CustomTimeoutException() : super('Request timed out', Duration(seconds: 5));
}
