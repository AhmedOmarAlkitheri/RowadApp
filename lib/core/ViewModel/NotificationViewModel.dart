import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:rowadapp/core/model/NotificationModel%20.dart';

import 'package:rowadapp/helpers/HttpHelper.dart';

class NotificationViewModel extends ChangeNotifier {
  ApiResponse? apiResponse;
  List<Notification_M>? filteredNotifications;
  bool isLoading = false;
  String? errorMessage;
  Httphelper httphelper = Httphelper.instance;
  Future<void> fetchNotifications(String studentId) async {
    isLoading = true;
    notifyListeners();

    try {
      var response = await httphelper.getRequest(
        url: 'https://dummyjson.com/c/91c9-ea69-40d8-8cb2',
        queryParameters: {'studentId': studentId},
      );

      if (response.statusCode == 200) {
        apiResponse = ApiResponse.fromJson(response.data);
        filteredNotifications = apiResponse?.data
            ?.where((notification) => notification.studentId == studentId)
            .toList();

        if (filteredNotifications == null || filteredNotifications!.isEmpty) {
          errorMessage = 'لا توجد إشعارات متاحة لهذا الطالب';
        } else {
          errorMessage = null;
        }
      } else {
        errorMessage = 'فشل في تحميل الإشعارات';
      }
    } catch (error) {
      errorMessage = 'حدث خطأ: $error';
    }

    isLoading = false;
    notifyListeners();
  }
}
