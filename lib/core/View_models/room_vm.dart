import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rowadapp/constants/ApiUrls.dart';
import 'package:rowadapp/core/Models/user.dart';
import 'package:rowadapp/core/models/room.dart';
import 'package:rowadapp/helper/api_exception.dart';
import 'package:rowadapp/helper/http_helper.dart';

class RoomVM with ChangeNotifier {
  bool isLoading = false;
  bool error = false;
  late String errorMessage;

  RoomVM() {
    getData();
  }

  Room? room;
//  getRoomInfo(){
//   Map<String,dynamic> roomInfo = {
//     'roomNo': '1',
//     'floor': '3',
//     'suit': 's1',
//     'roomMates': ['علي أحمد العلي', 'حسن محمد الحسن', 'سمير علي السمير', 'فهد سعيد الفهد']};
//   room = Room.fromJson(roomInfo);
//   notifyListeners();
// }

  void getData() async {
    error = false;
    isLoading = true;
    notifyListeners();
    User u = User();
    FormData data = FormData.fromMap({"token": u.getToken, "id": u.getId});


    try {
      HttpHelper dhelper = HttpHelper.instance;
      Response response =
          await dhelper.postRequest(url: Apiurls.roomData, data: data);

      print('Response: ${jsonDecode(response.data)}');
      // print('Response: ${response.data['statuse']}');

      if (response.statusCode == 200) {

          Map<String, dynamic> roomData = jsonDecode(response.data['data']);
          print("hhhhhhhhhhh");
          room = Room.fromJson(roomData);
        }
    } on DioException catch (e) {
      error = true;
      errorMessage = ApiException.exceptionHandler(e);
    } catch (e) {
      error = true;
      errorMessage = e.toString();
      print(e.toString());
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
