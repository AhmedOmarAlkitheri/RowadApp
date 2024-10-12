import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rowadapp/core/model/room.dart';


import 'package:rowadapp/global/constraints/HttpUrl.dart';

import 'package:rowadapp/helpers/Dio_Exception.dart';
import 'package:rowadapp/helpers/Getstorage_helper.dart';
import 'package:rowadapp/helpers/HttpHelper.dart';

class RoomVM with ChangeNotifier {
  bool _isLoading = false;
  bool _error = false;
  late String errorMessage;
  Httphelper httphelper =Httphelper.instance ;
  Getstorage_helper getstorage_helper = Getstorage_helper.instance;

  bool get isLoading => _isLoading;
  bool get error => _error;

   

  RoomVM() {
    fetchRoomData();
  }

  Room? room;


  Future<void> fetchRoomData() async {
    _error = false;
    _isLoading = true;
    notifyListeners();
  String id = getstorage_helper.readFrmFile("student_id");
    String token = getstorage_helper.readFrmFile("token");
    FormData data = FormData.fromMap({"token": token, "id":id});


    try {
   
      Response response =
          await httphelper.postRequest(url: Apiurls.roomData, data: data);

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
       errorMessage = Dioexception.handleException(e);
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
