import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:rowadapp/core/model/NotificationModel%20.dart';
import 'package:rowadapp/global/constraints/HttpUrl.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';

import 'package:rowadapp/helpers/HttpHelper.dart';

class NotificationViewModel extends ChangeNotifier {
  ApiResponse? apiResponse;
  List<Notification_M>? filteredNotifications;
 // List<Notification_M>? filteredNotification;
  bool isLoading = false;
  String? errorMessage;
  Httphelper httphelper = Httphelper.instance;
  Getstorage_helper getstorageHelper = Getstorage_helper.instance;
  // String id ;
  // String token;

  NotificationViewModel() {
//     getstorageHelper.readFrmFile("student_id");
// getstorageHelper.readFrmFile("token");
    fetchNotifications(getstorageHelper.readFrmFile("student_id"),
        getstorageHelper.readFrmFile("token"));
  }
  Future<void> fetchNotifications(String studentId, String token) async {
    isLoading = true;
    notifyListeners();
//https://dummyjson.com/c/91c9-ea69-40d8-8cb2
    try {
      Options? headers = Options();
      headers.headers = {
        'Content-Type': 'application/json',
      };
      // 'Accept': 'application/json',
// 'Authorization': "Bearer $token"
      // Options? headers = Options();
      // headers.headers = {
      //   'Content-Type': 'application/json',
      //   'Accept': 'application/json',

      // };

      //  headers.headers!["Authorization"] =
      //   "Bearer ${getstorageHelper.readFrmFile("token")}";
      // print("$token kl; oik;");
      // print("$studentId ghfdsfghj");
      FormData fromdata = FormData.fromMap({'token': token, 'id': studentId});
      //  Map<String, String> D = {'token': token, 'id': studentId};
      var response = await httphelper.postRequest(
          url: Apiurls.navigation,
          data: fromdata,
          options: headers);

      if (response.statusCode == 200) {
        apiResponse = ApiResponse.fromJson(jsonDecode(response.data));
        filteredNotifications = apiResponse?.data;

      filteredNotifications = filteredNotifications?.reversed.toList();

        insertData(filteredNotifications);
        if (filteredNotifications == null || filteredNotifications!.isEmpty) {
          errorMessage = 'لا توجد إشعارات متاحة لهذا الطالب';
        } else {
          errorMessage = null;
        }
      } else {
        errorMessage = response.data['message'];
      }
    } on DioException catch (x) {
      errorMessage = Dioexception.handleException(x);
    } catch (error) {
      errorMessage = 'حدث خطأ: $error';
    }

    isLoading = false;
    notifyListeners();
  }

  insertData(List<Notification_M>? filteredNotifications) {
    Getstorage_helper getstorageHelper = Getstorage_helper.instance;

    getstorageHelper.writeToFile(
        key: "content", value: filteredNotifications?.first.content);
    getstorageHelper.writeToFile(
        key: "title", value: filteredNotifications?.first.title);
  }
}
