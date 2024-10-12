import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:rowadapp/constants/ApiUrls.dart';
import 'package:rowadapp/core/Models/compliant.dart';
import 'package:rowadapp/core/Models/user.dart';
import 'package:rowadapp/helper/api_exception.dart';
import 'package:rowadapp/helper/http_helper.dart';
import 'dart:convert';


class CompliantVm with ChangeNotifier {
  List<Compliant> Compliants = [];
  bool _isLoading = false;
  bool _error = false;
  late String _message;

  bool get isLoading => _isLoading;
  bool get error => _error;
  String get message => _message;

  CompliantVm() {
    fetchCompliantData();
  }

  Future<void> fetchCompliantData() async {
    _error = false;
    _isLoading = true;
    notifyListeners();

    User u = User();
    FormData data = FormData.fromMap({"token": u.getToken, "id": u.getId});

    try {
      HttpHelper dhelper = HttpHelper.instance;
      Response response =
          await dhelper.postRequest(url: Apiurls.allCompliants, data: data);

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.data);
        List<dynamic> allCompliant = jsonResponse['data'];
        Compliants =
            allCompliant.map((element) => Compliant.fromJson(element)).toList();
        _message = 'success';
      }
    } on DioException catch (e) {
      _error = true;
      _message = ApiException.exceptionHandler(e);
    } catch (e) {
      _error = true;
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

   Future<void>  addCompliant(Compliant c) async {
    _error = false;
    _isLoading = true;
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
      Response response =
          await dhelper.postRequest(url: Apiurls.sendCompliant, data: data);
      if (response.statusCode == 200) {
        _message = 'تم إرسال الشكوى';
      } else {
        _message = 'يوجد خطأ';
      }
    } on DioException catch (e) {
      _error = true;
      _message = ApiException.exceptionHandler(e);
    } catch (e) {
      _error = true;
      _message = e.toString();
    } finally {
      _isLoading = false;
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