import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'package:rowadapp/core/model/StudentInformation.dart';
import 'package:rowadapp/core/model/User.dart';
import 'package:rowadapp/global/constraints/HttpUrl.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class UsersVm extends ChangeNotifier {
  bool _isObscured = true;
  bool isLoading = false;
  bool get isObscured => _isObscured;

  void toggleVisibility() {
    _isObscured = !_isObscured;
    notifyListeners();
  }
  void loading() {
    isLoading = !isLoading;
    notifyListeners();
  }
  Future<String> login(Map<String, String>? loginInfo) async {
    isLoading = true;
    notifyListeners();
    Httphelper httphelper = Httphelper.instance;
    Options? headers = Options();
    headers.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      //   print(user.authData());
      Response res = await httphelper.postRequest(
          url: "https://rowad.actnow-ye.com/apis/login.php",
          options: headers,
          data: loginInfo);
      // Map<String, dynamic> f = await res.data;
      // print(f);
      //if (res.statusCode == 200) {
      print(res.data["data"]);
      User u = await User.fromJson(res.data["data"]);

      //  print(res.data["data"]["student_Information"][0]);
      // print(u);
      print(u.token);
      print(u.stuedntInformation);
      StuedntInformation? stuedntInformation = u.stuedntInformation;
      print(stuedntInformation);
      // StuedntInformation stuedntInformations = stuedntInformationList![0];

      insertData(stuedntInformation!, u);
        isLoading = false;
    notifyListeners();
      return "Success";
      
      //    }
    } on DioException catch (x) {
      return Dioexception.handleException(x);
    } catch (e) {
      return "Error is $e";
    }
      
    // return "null";
  }

  insertData(StuedntInformation stuedntInformation, User u) {
    Getstorage_helper getstorageHelper = Getstorage_helper.instance;
    print(u.token);
    getstorageHelper.writeToFile(key: "token", value: u.token!);
    getstorageHelper.writeToFile(
        key: "student_id", value: stuedntInformation.studentId!);
    getstorageHelper.writeToFile(
        key: "student_name", value: stuedntInformation.studentName!);

    getstorageHelper.writeToFile(
        key: "date_of_berth", value: stuedntInformation.dateOfBerth!);
    getstorageHelper.writeToFile(
        key: "directorate", value: stuedntInformation.directorate!);

    getstorageHelper.writeToFile(
        key: "classroom", value: stuedntInformation.classroom!);
    getstorageHelper.writeToFile(
        key: "school", value: stuedntInformation.school!);
    getstorageHelper.writeToFile(
        key: "guardian_phone", value: stuedntInformation.guardianPhone!);
  }
}
