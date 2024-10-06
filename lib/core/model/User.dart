// class User {
//   String? token;
//   String? refreshToken;
//   int? id;
//   String? username;
//   String? email;
//   String? firstName;
//   String? lastName;
//   String? gender;
//   String? image;
//   String? password;

//   User(
//       {this.token,
//       this.refreshToken,
//       this.id,
//       this.username,
//       this.email,
//       this.firstName,
//       this.lastName,
//       this.gender,
//       this.password,
//       this.image});

//   User.fromJson(Map<String, dynamic> json) {
//     token = json['accessToken'];
//     refreshToken = json['refreshToken'];
//     id = json['id'];
//     username = json['username'];
//     email = json['email'];
//     firstName = json['firstName'];
//     lastName = json['lastName'];
//     gender = json['gender'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['accessToken'] = token;
//     data['refreshToken'] = refreshToken;
//     data['id'] = id;
//     data['username'] = username;
//     data['email'] = email;
//     data['firstName'] = firstName;
//     data['lastName'] = lastName;
//     data['gender'] = gender;
//     data['image'] = image;
//     return data;
//   }

//   Map<String, String> authData() {
//     Map<String, String> loginInfo = {};
//     loginInfo["username"] = username!;
//     loginInfo["password"] = password!;
//     return loginInfo;
//   }
// }

import 'package:rowadapp/core/model/StudentInformation.dart';

class User {
  String? token;
  List<StuedntInformation>? stuedntInformation;
  static Map<String, String>? loginInfo;

  User({this.token, this.stuedntInformation});

  User.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    if (json['stuednt_Information'] != null) {
      stuedntInformation = <StuedntInformation>[];
      json['stuednt_Information'].forEach((v) {
        stuedntInformation!.add(new StuedntInformation.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.stuedntInformation != null) {
      data['stuednt_Information'] =
          this.stuedntInformation!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
