import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:rowadapp/global/components/PictureFromGallary.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class RegistrationVm with ChangeNotifier {
  XFile? image;
  static Map<String, dynamic> registrationinfo = {};
  DateTime? currentDate;
  String next_grade = "التاسع";
  String school = "الابداع";
  Httphelper httphelper = Httphelper.instance;
  // DateTime get currentDate => _currentDate;
  getPicture() async {
    image = await getPictureFromGallary();
    notifyListeners();
  }

  void updateNextGrade(String nextClass) {
    next_grade = nextClass;
    notifyListeners();
  }

  void updateSchool(String schoolName) {
    school = schoolName;
    notifyListeners();
  }

  void updateDate(DateTime newDate) {
    currentDate = newDate;
    notifyListeners();
  }
  //https://dummyjson.com/c/7fb4-502d-4417-b974

  refershData() async {
    notifyListeners();
    await postRegistration();
  }
  //  Getstorage_helper httoGS = Getstorage_helper.instance;

  // http.d.options.headers["Authorization"] =
  //     "Bearer ${httoGS.readFromData("token")}";
  // Map<String, dynamic> product = prod.toJson();

  postRegistration() async {
    Options? headers = Options();
    headers.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json'
    };

    try {
      await httphelper.postRequest(
          url: "https://dummyjson.com/c/a025-2972-44b8-9614",
          options: headers,
          data: RegistrationVm.registrationinfo);
      print("GFD");
    } on DioException catch (x) {
      return Dioexception.handleException(x);
    } catch (e) {
      return "Error is $e";
    }
  }
}
