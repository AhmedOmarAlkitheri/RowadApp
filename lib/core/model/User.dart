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
  StuedntInformation? stuedntInformation;
  static Map<String, String>? loginInfo;
  
  User({this.token, this.stuedntInformation});

  User.fromJson(Map<String, dynamic> json) {
    token = json['token'];

    if (json['student_Information'] != null && json['student_Information'].isNotEmpty) {
      stuedntInformation = StuedntInformation.fromJson(json['student_Information']);
    } else {
      print('student_Information is null or empty');
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['token'] = token;

    if (stuedntInformation != null) {
      data['student_Information'] = stuedntInformation!.toJson();
    }
    
    return data;
  }
}
