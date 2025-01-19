import 'package:dio/dio.dart';

class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDioException({required DioException dioException}) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: "Connection Timeout With API Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send Timeout With API Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: "Receive Timeout With API Server");
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: "Bad Certificate With API Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            statusCode: dioException.response!.statusCode!,
            data: dioException.response?.data);
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request to API Server canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: "No Internet Connection");
      case DioExceptionType.unknown:
        return ServerFailure(errorMessage: "Unknown Error, please try again..");
      default:
        return ServerFailure(
            errorMessage: "Oops there was an error, please try later!");
    }
  }

  factory ServerFailure.fromResponse(
      {required int statusCode, required Map<String, dynamic> data}) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errorMessage: data["error"]["message"]);
    } else if (statusCode == 404) {
      return ServerFailure(
          errorMessage: "Request Not Found, please try later!");
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: "Internal Server Error, please try later!");
    } else {
      return ServerFailure(
          errorMessage: "Oops there was an error, please try later!");
    }
  }
}
