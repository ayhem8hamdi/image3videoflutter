import 'package:dio/dio.dart';
import 'package:image2vid/core/errors/failure.dart';

abstract class ApiService {
  Future<Response> post({
    required String endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });

  Future<Response> postMultipart({
    required String endpoint,
    required FormData formData,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  });

  Future<Response> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
}

class ApiServiceImpl implements ApiService {
  final Dio dio;

  ApiServiceImpl({required this.dio}) {
    _configureDio();
  }

  void _configureDio() {
    dio.options = BaseOptions(
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
    );

    // interceptors for logging
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  @override
  Future<Response> post({
    required String endpoint,
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await dio.post(
        endpoint,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<Response> postMultipart({
    required String endpoint,
    required FormData formData,
    Map<String, dynamic>? queryParameters,
    void Function(int, int)? onSendProgress,
  }) async {
    try {
      return await dio.post(
        endpoint,
        data: formData,
        queryParameters: queryParameters,
        onSendProgress: onSendProgress,
        options: Options(contentType: 'multipart/form-data'),
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  @override
  Future<Response> get({
    required String endpoint,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      return await dio.get(
        endpoint,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw _handleDioError(e);
    }
  }

  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException(
          'Connection timeout. Please check your internet.',
        );

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final message =
            error.response?.data?['message'] ?? 'Server error occurred';

        if (statusCode == 400) {
          return ValidationException(message);
        } else if (statusCode != null && statusCode >= 500) {
          return ServerException(message, statusCode: statusCode);
        }
        return ServerException(message, statusCode: statusCode);

      case DioExceptionType.cancel:
        return NetworkException('Request was cancelled');

      case DioExceptionType.connectionError:
      case DioExceptionType.unknown:
        return NetworkException(
          'No internet connection. Please check your network.',
        );

      default:
        return NetworkException('Unexpected error occurred');
    }
  }
}
