import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:rowadapp/core/model/Registration_M.dart';
import 'package:rowadapp/global/components/PictureFromGallary.dart';
import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class RegistrationVm with ChangeNotifier {
  XFile? image;
  static Map<String, dynamic> registrationinfo = {};
  Registrationmodel? registrationmodel;
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

  // refershData() async {
  //   notifyListeners();
  //   await postRegistration();
  // }
  //  Getstorage_helper httoGS = Getstorage_helper.instance;

  // http.d.options.headers["Authorization"] =
  //     "Bearer ${httoGS.readFromData("token")}";
  // Map<String, dynamic> product = prod.toJson();

  Future postRegistration() async {
    try {
      // FormData formData = FormData.fromMap({
      //   'student_id': RegistrationVm.registrationinfo['student_id'],
      //   'stud_name': RegistrationVm.registrationinfo['stud_name'],
      //   'date_of_birth': RegistrationVm.registrationinfo['date_of_birth'],
      //   'place_of_birth': RegistrationVm.registrationinfo['place_of_birth'],
      //   'currentplace_residence':
      //       RegistrationVm.registrationinfo['currentplace_residence'],
      //   'current_residence_details':
      //       RegistrationVm.registrationinfo['current_residence_details'],
      //   'area': RegistrationVm.registrationinfo['area'],
      //   'directorate': RegistrationVm.registrationinfo['directorate'],
      //   'disease': RegistrationVm.registrationinfo['disease'],
      //   'school': RegistrationVm.registrationinfo['school'],
      //   'last_grade_percentage':
      //       RegistrationVm.registrationinfo['last_grade_percentage'],
      //   'next_grade': RegistrationVm.registrationinfo['next_grade'],
      //   'skills': RegistrationVm.registrationinfo['skills'],
      //   'fav_school': RegistrationVm.registrationinfo['fav_school'],
      //   'participations': RegistrationVm.registrationinfo['participations'],
      //   'future_ambitions': RegistrationVm.registrationinfo['future_ambitions'],
      //   'join_school': RegistrationVm.registrationinfo['join_school'],
      //   'guardian_name': RegistrationVm.registrationinfo['guardian_name'],
      //   'relationship': RegistrationVm.registrationinfo['relationship'],
      //   'profession': RegistrationVm.registrationinfo['profession'],
      //   'guardian_phone': RegistrationVm.registrationinfo['guardian_phone'],
      //   'phone': RegistrationVm.registrationinfo['phone'],
      //   'whatsapp': RegistrationVm.registrationinfo['whatsapp'],
      //   'image': await MultipartFile.fromFile(imageFile.path,
      //       filename: 'profile_image.jpg'),
      // });

      Options headers = Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      );
      // url: "https://dummyjson.com/c/a43e-ef13-4cb4-8b13",
      String registrationdata = jsonEncode(registrationinfo);
      print(registrationdata);
      Response response = await httphelper.postRequest(
        url:
            "http://10.0.2.2/AL_RWAD/kaiadmin-lite-1.2.0/api/register_student.php",
        options: headers,
        data: registrationinfo,
      );
      print("vhgjhj");
      if (response.statusCode == 200) {
        SnackBar(content: Text('${response.data['message']}'));
        print('تم إرسال البيانات بنجاح');
      } else {
        SnackBar(content: Text('حدث خطأ: ${response.data['message']}'));
        print('فشل في إرسال البيانات: ${response.statusCode}');
      }
    } on DioException catch (x) {
      return Dioexception.handleException(x);
    } catch (e) {
      return "Error is $e";
    }
  }

  // Registrationmodel? profileData;
  // bool isLoading = false;
  // String? errorMessage;

  // Future<void> fetchRegistration(String studentId) async {
  //   isLoading = true;
  //   notifyListeners();

  //   try {
  //     var response = await httphelper.getRequest(
  //       url: 'https://dummyjson.com/c/a43e-ef13-4cb4-8b13',
  //       queryParameters: {'student_id': studentId},
  //     );

  //     if (response.statusCode == 200) {
  //       var responseData = response.data["data"];

  //       if (responseData is List) {
  //         profileData = responseData
  //             .map<Registrationmodel>((e) => Registrationmodel.fromJson(e))
  //             .firstWhere(
  //               (student) => student.studentid == studentId,
  //               // orElse: () => null,
  //             );
  //       } else if (responseData is Map<String, dynamic>) {
  //         var student = Registrationmodel.fromJson(responseData);
  //         if (student.studentid == studentId) {
  //           profileData = student;
  //         }
  //       }

  //       if (profileData == null) {
  //         errorMessage = 'لا توجد بيانات لهذا الطالب';
  //       } else {
  //         errorMessage = null;
  //       }
  //     } else {
  //       errorMessage = 'فشل في تحميل البيانات';
  //     }
  //   } catch (error) {
  //     errorMessage = 'حدث خطأ: $error';
  //   }

  //   isLoading = false;
  //   notifyListeners();
  // }
}
