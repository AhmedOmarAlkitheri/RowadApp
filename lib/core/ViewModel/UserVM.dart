import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:rowadapp/core/model/StudentInformation.dart';
import 'package:rowadapp/core/model/User.dart';
import 'package:rowadapp/global/constraints/HttpUrl.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class UsersVm {
  Future<String?> login(Map<String, String>? loginInfo) async {
    Httphelper httphelper = Httphelper.instance;
    Options? headers = Options();
    headers.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    try {
      //   print(user.authData());
      Response res = await httphelper.postRequest(
          url: "http://10.0.2.2/AL_RWAD/kaiadmin-lite-1.2.0/api/login.php",
          options: headers,
          data: jsonEncode(loginInfo));
      print(loginInfo);
      if (res.statusCode == 200) {
        User u = User.fromJson(res.data["data"]);

        // print(u);
        print(u.token);
        print(u.stuedntInformation);
        List<StuedntInformation>? stuedntInformationList = u.stuedntInformation;

        StuedntInformation stuedntInformations = StuedntInformation.fromJson(
            stuedntInformationList?[0] as Map<String, dynamic>);
        // StuedntInformation stuedntInformations =
        //     StuedntInformation.frommap(stuedntInformationList?[0]);
        insertData(stuedntInformations, u);
        return "Success";
      }
    } on DioException catch (x) {
      return Dioexception.handleException(x);
    } catch (e) {
      return "Error is $e";
    }
    return null;
  }

  insertData(StuedntInformation stuedntInformation, User u) {
    Getstorage_helper getstorageHelper = Getstorage_helper.instance;
    getstorageHelper.writeToFile(key: "token", value: u.token!);
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
