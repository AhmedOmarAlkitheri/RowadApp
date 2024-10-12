import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rowadapp/constants/ApiUrls.dart';
import 'package:rowadapp/core/Models/user.dart';
import 'package:rowadapp/core/models/room.dart';
import 'package:rowadapp/helper/api_exception.dart';
import 'package:rowadapp/helper/http_helper.dart';

class RoomVM with ChangeNotifier {
  bool _isLoading = false;
  bool _error = false;
  late String errorMessage;


  bool get isLoading => _isLoading;
  bool get error => _error;



  RoomVM() {
    fetchRoomData();
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

  Future<void> fetchRoomData() async {
    _error = false;
    _isLoading = true;
    notifyListeners();
    User u = User();
    FormData data = FormData.fromMap({"token": u.getToken, "id": u.getId});


    try {
      HttpHelper dhelper = HttpHelper.instance;
      Response response =
          await dhelper.postRequest(url: Apiurls.roomData, data: data);

      // print('Response: ${jsonDecode(response.data)}');
      // print('Response: ${response.data['statuse']}');

      if (response.statusCode == 200) {

          var jsonResponse = jsonDecode(response.data);
          Map<String, dynamic> roomData = jsonResponse['data'];
          print( jsonResponse['data']);
          room = Room.fromJson(roomData);
        }
    } on DioException catch (e) {
      _error = true;
      errorMessage = ApiException.exceptionHandler(e);
    } catch (e) {
      _error = true;
      errorMessage = e.toString();
      print(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
