import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';


class SecureDioConfig {
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  static Dio createDio({
    required String baseUrl,
    Map<String, dynamic>? headers,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: connectTimeout,
        receiveTimeout: receiveTimeout,
        sendTimeout: sendTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          ...?headers,
        },
        // Validate status codes
        validateStatus: (status) => status != null && status < 500,
      ),
    );

    // Add interceptors in order of execution
    dio.interceptors.addAll([
      _SecurityInterceptor(),
      if (kDebugMode) _LoggingInterceptor(),
      _ErrorInterceptor(),
    ]);

    return dio;
  }
}


class _SecurityInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra['requestTime'] = DateTime.now().millisecondsSinceEpoch;
    
    options.queryParameters = _sanitizeParams(options.queryParameters);
    
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data == null) {
      handler.reject(
        DioException(
          requestOptions: response.requestOptions,
          error: 'Empty response received',
          type: DioExceptionType.badResponse,
        ),
      );
      return;
    }
    
    handler.next(response);
  }

  Map<String, dynamic> _sanitizeParams(Map<String, dynamic> params) {
    return params.map((key, value) {
      if (value is String) {
        return MapEntry(key, _sanitizeString(value));
      }
      return MapEntry(key, value);
    });
  }

  String _sanitizeString(String value) {
    return value
        .replaceAll(RegExp(r'<script[^>]*>.*?</script>', caseSensitive: false), '')
        .replaceAll(RegExp(r'''[;'"\\]'''), '')
        .trim();
  }
}


class _LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    debugPrint('🌐 REQUEST[${options.method}] => ${options.uri}');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final requestTime = response.requestOptions.extra['requestTime'] as int?;
    final duration = requestTime != null 
        ? DateTime.now().millisecondsSinceEpoch - requestTime 
        : 0;
    
    debugPrint(
      '✅ RESPONSE[${response.statusCode}] => ${response.requestOptions.uri} (${duration}ms)',
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    debugPrint(
      '❌ ERROR[${err.response?.statusCode}] => ${err.requestOptions.uri}',
    );
    handler.next(err);
  }
}

class _ErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final customError = DioException(
      requestOptions: err.requestOptions,
      response: err.response,
      type: err.type,
      error: _getErrorMessage(err),
    );
    
    handler.next(customError);
  }

  String _getErrorMessage(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.sendTimeout:
        return 'Request timeout. Please try again.';
      case DioExceptionType.receiveTimeout:
        return 'Server response timeout. Please try again.';
      case DioExceptionType.badResponse:
        return _getResponseErrorMessage(err.response?.statusCode);
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.connectionError:
        return 'No internet connection.';
      default:
        return 'An unexpected error occurred.';
    }
  }

  String _getResponseErrorMessage(int? statusCode) {
    switch (statusCode) {
      case 400:
        return 'Bad request.';
      case 401:
        return 'Unauthorized. Please login again.';
      case 403:
        return 'Access forbidden.';
      case 404:
        return 'Resource not found.';
      case 429:
        return 'Too many requests. Please wait and try again.';
      case 500:
        return 'Internal server error.';
      case 503:
        return 'Service unavailable.';
      default:
        return 'Server error: $statusCode';
    }
  }
}
