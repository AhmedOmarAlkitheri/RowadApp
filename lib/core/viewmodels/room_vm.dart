import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:rowadapp/core/models/room.dart';

class RoomVM with ChangeNotifier{

 RoomVM(){
   getRoomInfo();
 }
  late Room room;
 getRoomInfo(){
  Map<String,dynamic> roomInfo = {
    'roomNo': '1',
    'floor': '3',
    'suit': 's1',
    'roomMates': ['علي أحمد العلي', 'حسن محمد الحسن', 'سمير علي السمير', 'فهد سعيد الفهد']};
  room = Room.fromJson(roomInfo);
  notifyListeners();
}

  // void getData() async {
  //   Dio dio =Dio();
  //   Response response =  await dio.get('');
  //   Map<String,dynamic> room = response.data;
  // }
}
