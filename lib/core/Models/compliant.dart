class Compliant {
  String? title;
  String? content;
  String? sendDate;
  bool? responseStatuse;
  String? response;

  Compliant(
      {this.title,
      this.sendDate,
      this.content,
      this.responseStatuse,
      this.response});

  Compliant.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    sendDate = json['sendDate'];
    responseStatuse = json['responseStatuse'];
    response = json['response'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['content'] = this.content;
    data['sendDate'] = this.sendDate;
    data['responseStatuse'] = this.responseStatuse;
    data['response'] = this.response;
    return data;
  }
}
