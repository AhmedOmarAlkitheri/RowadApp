import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:rowadapp/core/model/compliant.dart';

import 'package:rowadapp/global/constraints/HttpUrl.dart';

import 'dart:convert';

import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class CompliantVm with ChangeNotifier {
  List<Compliant> Compliants = [];
  Getstorage_helper getstorage_helper = Getstorage_helper.instance;

  bool _isLoading = false;
  bool _error = false;
  late String _message;
  Httphelper httphelper = Httphelper.instance;
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
    String id = getstorage_helper.readFrmFile("student_id");
    String token = getstorage_helper.readFrmFile("token");

    FormData data = FormData.fromMap({"token": token, "id": id});

    try {
      //   HttpHelper dhelper = HttpHelper.instance;

      Response response =
          await httphelper.postRequest(url: Apiurls.allCompliants, data: data);

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.data);
        List<dynamic> allCompliant = jsonResponse['data'];
        Compliants =
            allCompliant.map((element) => Compliant.fromJson(element)).toList();
        _message = 'success';
      }
    } on DioException catch (e) {
      _error = true;
      _message = Dioexception.handleException(e);
    } catch (e) {
      _error = true;
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addCompliant(Compliant c) async {
    _error = false;
    _isLoading = true;
    notifyListeners();

    try {
      //   Httphelper httphelper =Httphelper.instance ;

      String id = getstorage_helper.readFrmFile("student_id");
      String token = getstorage_helper.readFrmFile("token");
      FormData data = FormData.fromMap({
        "token": token,
        "student_id": id,
        "titele": c.title,
        "content": c.content,
      });
      // print(data);
      Response response =
          await httphelper.postRequest(url: Apiurls.sendCompliant, data: data);
      if (response.statusCode == 200) {
        _message = 'تم إرسال الشكوى';
      } else {
        _message = 'يوجد خطأ';
      }
    } on DioException catch (e) {
      _error = true;
      // _message = ApiException.exceptionHandler(e);
      _message = Dioexception.handleException(e);
    } catch (e) {
      _error = true;
      _message = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
