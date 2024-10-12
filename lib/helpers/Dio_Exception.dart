import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/helpers/error_widget.dart';

class Dioexception {
  static handleException(DioException error) {
    switch (error.type) {
      case DioExceptionType.badResponse:
        {
          return "badResponse";
          // return const ErrorWidgetView(error: "badResponse");
          // return const Center(child: CircularProgressIndicator());
        }

      case DioExceptionType.connectionTimeout:
        {
          return "connectionTimeout";
          //return const ErrorWidgetView(error: "connectionTimeout");
        }

      case DioExceptionType.connectionError:
        {
          return "connectionError";
          //return const ErrorWidgetView(error: "لا يوجد اتصال انترنت");
        }

      default:
        {
          return "لا توجد استجابة من الخادم";
        }
    }
  }
}
