import 'package:education_app/core/errors/exception.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statusCode});
  final String message;
  final dynamic statusCode;

  String get errorMessage => 'statusCode: $statusCode, Error: $message';

  @override
  List<Object?> get props => [message, statusCode];
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message, required super.statusCode});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.message, required super.statusCode});

  ServerFailure.fromException(ServerException e)
      : super(message: e.toString(), statusCode: e.runtimeType);
}
