import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection timed out");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send request timed out");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive request timed out");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad certificate");
      case DioExceptionType.badResponse:
        return ServerFailure("Bad response from server");
      case DioExceptionType.cancel:
        return ServerFailure("Request was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection error");
      case DioExceptionType.unknown:
        return ServerFailure("Unknown error occurred");
      default:
        return ServerFailure("Something went wrong");
    }
  }
}
