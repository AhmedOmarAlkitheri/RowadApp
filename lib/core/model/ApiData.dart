class Registration {
  String? code;
  String? message;
  List<dynamic>? data;

  Registration({this.code, this.message, this.data});

  // Registration.fromJson(Map<String, dynamic> json) {
  //   code = json['code'];
  //   message = json['message'];
  //   if (json['data'] != null) {
  //     data = <dynamic>[];
  //     json['data'].forEach((v) {
  //       data!.add(new Data.fromJson(v));
  //     });
  //   }
  // }

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
