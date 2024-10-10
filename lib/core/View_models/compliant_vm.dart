import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/constants/ApiUrls.dart';
import 'package:rowadapp/core/Models/compliant.dart';
import 'package:rowadapp/core/Models/user.dart';
import 'package:rowadapp/helper/api_exception.dart';
import 'package:rowadapp/helper/http_helper.dart';

class CompliantVm with ChangeNotifier {
  List<Compliant> Compliants = [];
  bool isLoading = false;
  bool error = false;
  late String message;

  CompliantVm() {
    getData();
  }

  void getData() async {
    error = false;
    isLoading = true;
    notifyListeners();

    User u = User();
    FormData data = FormData.fromMap({"token": u.getToken, "id": u.getId});

    try {
      HttpHelper dhelper = HttpHelper.instance;
      Response res =
          await dhelper.postRequest(url: Apiurls.allCompliants, data: data);
      List<dynamic> allCompliant = res.data["data"];
      Compliants =
          allCompliant.map((element) => Compliant.fromJson(element)).toList();
      if (res.data['status'] == 200) message = 'success';
    } on DioException catch (e) {
      error = true;
      message = ApiException.exceptionHandler(e);
    } catch (e) {
      error = true;
      message = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  addCompliant(Compliant c) async {
    error = false;
    isLoading = true;
    notifyListeners();

    try {
      HttpHelper dhelper = HttpHelper.instance;
      User u = User();
      FormData data = FormData.fromMap({
        "token": u.getToken,
        "student_id": u.getId,
        "titele": c.title,
        "content": c.content,
      });
      // print(data);
      Response res =
          await dhelper.postRequest(url: Apiurls.sendCompliant, data: data);
      if (res.data['status'] == 200) {
        message = 'تم إرسال الشكوى';
      } else {
        message = 'يوجد خطأ';
      }
    } on DioException catch (e) {
      error = true;
      message = ApiException.exceptionHandler(e);
    } catch (e) {
      error = true;
      message = e.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}


//  Compliant(title: ' تسرب المياه من السقف', sendDate: '2024 / 1 / 10'),
//     Compliant(
//         title: 'عدم توفر خدمة الإنترنت بشكل مستمر ', sendDate: '2024 / 1 / 10'),
//     Compliant(title: ' تسرب المياه من السقف', sendDate: '2024 / 1 / 10'),
//     Compliant(
//         title: 'عدم توفر خدمة الإنترنت بشكل مستمر ', sendDate: '2024 / 1 / 10'),
//     Compliant(title: ' تسرب المياه من السقف', sendDate: '2024 / 1 / 10'),
//     Compliant(
//         title: 'عدم توفر خدمة الإنترنت بشكل مستمر ', sendDate: '2024 / 1 / 10'),