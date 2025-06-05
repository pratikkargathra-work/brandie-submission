import 'dart:io';
import 'package:flutter/services.dart';
import 'error_l10n_codes.dart';
import 'package:dio/dio.dart' show DioException;

class AppError implements Exception {
  final String? message;
  final String? l10nCode;
  final int? statusCode;

  const AppError({this.message, this.statusCode, this.l10nCode});

  @override
  String toString() {
    return '$runtimeType{message: $message, code: $statusCode, l10nCode: $l10nCode}';
  }

  factory AppError.fromError(Object error) {
    if (error is AppError) {
      return error;
    } else if (error is SocketException ||
        (error is PlatformException && error.code == 'network_error')) {
      return const NoConnectionError();
    } else if (error is DioException) {
      return SomethingWentWrongError(
        message: error.message,
        statusCode: error.response?.statusCode,
      );
    }
    return SomethingWentWrongError(message: error.toString());
  }
}

class NoConnectionError extends AppError {
  const NoConnectionError()
      : super(
    l10nCode: AppErrorL10nCodes.noInternetConnectionError,
    message:
    "No internet connection. Please check your network and try again.",
  );
}

class SomethingWentWrongError extends AppError {
  const SomethingWentWrongError({super.message, super.statusCode})
      : super(
    l10nCode: AppErrorL10nCodes.somethingWentWrongError,
  );
}



