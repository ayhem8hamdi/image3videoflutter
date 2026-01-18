import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final int? statusCode;

  const Failure(this.message, {this.statusCode});

  @override
  List<Object?> get props => [message, statusCode];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {super.statusCode});
}

class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

class ValidationFailure extends Failure {
  const ValidationFailure(super.message) : super(statusCode: 400);
}

class CacheFailure extends Failure {
  const CacheFailure(super.message);
}

class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException(this.message, {this.statusCode});
}

class NetworkException implements Exception {
  final String message;

  NetworkException(this.message);
}

class ValidationException implements Exception {
  final String message;

  ValidationException(this.message);
}

class CacheException implements Exception {
  final String message;

  CacheException(this.message);
}
