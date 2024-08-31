import 'package:dio/dio.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      return _mapDioErrorToApiErrorModel(error);
    } else {
      return ApiErrorModel(
        message: "An unexpected error occurred",
        errors: error.toString(),
      );
    }
  }

  static ApiErrorModel _mapDioErrorToApiErrorModel(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionError:
        return ApiErrorModel(
          message: "Failed to connect to the server.",
          errors: error.message,
          code: error.response?.statusCode,
        );
      case DioExceptionType.cancel:
        return ApiErrorModel(
          message: "Request was cancelled.",
          errors: error.message,
          code: error.response?.statusCode,
        );
      case DioExceptionType.connectionTimeout:
        return ApiErrorModel(
          message: "Connection to the server timed out.",
          errors: error.message,
          code: error.response?.statusCode,
        );
      case DioExceptionType.unknown:
        return ApiErrorModel(
          message: "Connection failed due to an unknown error.",
          errors: error.message,
          code: error.response?.statusCode,
        );
      case DioExceptionType.receiveTimeout:
        return ApiErrorModel(
          message: "Receive timeout from the server.",
          errors: error.message,
          code: error.response?.statusCode,
        );
      case DioExceptionType.badResponse:
        return _handleBadResponse(error.response);
      case DioExceptionType.sendTimeout:
        return ApiErrorModel(
          message: "Send timeout to the server.",
          errors: error.message,
          code: error.response?.statusCode,
        );
      default:
        return ApiErrorModel(
          message: "An unexpected error occurred.",
          errors: error.message ?? "No error details available",
          code: error.response?.statusCode,
        );
    }
  }

  static ApiErrorModel _handleBadResponse(Response? response) {
    if (response?.data is Map<String, dynamic>) {
      final mapData = response!.data as Map<String, dynamic>;
      return ApiErrorModel(
        message: mapData['message'] ?? "An error occurred.",
        code: response.statusCode,
        errors: mapData['errors'] ?? {},
      );
    } else if (response?.data is String) {
      return ApiErrorModel(
        message: response!.data.contains('message')
            ? response.data
            : "An error occurred.",
        code: response.statusCode,
        errors: {},
      );
    } else {
      return ApiErrorModel(
        message: "An unknown error occurred.",
        code: response?.statusCode,
        errors: {},
      );
    }
  }
}
