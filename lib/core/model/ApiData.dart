// class Registration {
//   String? code;
//   String? message;
//   List<dynamic>? data;

//   Registration({this.code, this.message, this.data});

//   // Registration.fromJson(Map<String, dynamic> json) {
//   //   code = json['code'];
//   //   message = json['message'];
//   //   if (json['data'] != null) {
//   //     data = <dynamic>[];
//   //     json['data'].forEach((v) {
//   //       data!.add(new Data.fromJson(v));
//   //     });
//   //   }
//   // }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['code'] = code;
//     data['message'] = message;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

import 'package:rowadapp/core/model/User.dart';

class Apidata {
  int? status;
  String? message;
  dynamic data;

  Apidata({this.status, this.message, this.data});

  Apidata.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'];
    //!= null ? new User.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}
