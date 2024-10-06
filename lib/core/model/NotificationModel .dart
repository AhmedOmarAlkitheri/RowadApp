class ApiResponse {
  int? code;
  String? message;
  List<Notification_M>? data;

  ApiResponse({this.code, this.message, this.data});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(Notification_M.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notification_M {
  int? notificationId;
  String? studentId;
  String? date;
  String? title;
  String? subtitle;

  Notification_M(
      {this.notificationId,
      this.studentId,
      this.date,
      this.title,
      this.subtitle});

  Notification_M.fromJson(Map<String, dynamic> json) {
    notificationId = json['notificationId'];
    studentId = json['studentId'];
    date = json['date'];
    title = json['title'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notificationId'] = notificationId;
    data['studentId'] = studentId;
    data['date'] = date;
    data['title'] = title;
    data['subtitle'] = subtitle;
    return data;
  }
}
