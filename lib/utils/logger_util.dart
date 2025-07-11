import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

var logger = MyLogger();

class MyLogger {
  /// Log a message at level verbose.
  void v(dynamic message) {
    _print(' VERBOSE: $message');
  }

  /// Log a message at level debug.
  void d(dynamic message) {
    _print(' DEBUG: $message');
  }

  /// Log a message at level info.
  void i(dynamic message) {
    _print(' INFO: $message');
  }

  /// Log a message at level warning.
  void w(dynamic message) {
    _print(' WARNING: $message');
  }

  /// Log a message at level error.
  void e(dynamic message) {
    _print(' ERROR: $message');
  }

  void c(dynamic message, {required String methodName}) {
    _print(' CATCH $methodName: $message');
  }

  void _print(dynamic message) {
    if (kDebugMode) {
      _log('$message');
    }
  }

  void _log(dynamic message) {
    if (kDebugMode) {
      developer.log('$message');
    }
  }

  void log(
    dynamic message, {
    bool printFullText = false,
  }) {
    if (printFullText) {
      _print(message);
    } else {
      _print(message);
    }
    // if (stackTrace != null) {
    //   _print(stackTrace);
    // }
  }
}
