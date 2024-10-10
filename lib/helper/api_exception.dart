import 'package:dio/dio.dart';

class ApiException {
  static String exceptionHandler(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.badResponse:
        return 'bad response';
      case DioExceptionType.connectionError:
        return 'no connection';
      case DioExceptionType.receiveTimeout:
        return 'error in recieve time';
      default:
        return 'لا يوجد اتصال بالأنترنت';
    }
  }
}
