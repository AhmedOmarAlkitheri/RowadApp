class Compliant {
  String? id;
  String? title;
  String? content;
  // String? sendDate;
  String? responseStatuse;
  String? response;

  Compliant(
      {this.id,
      this.title,
      // this.sendDate,
      this.content,
      this.responseStatuse,
      this.response});

  Compliant.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    title = json['titele'].toString();
    content = json['content'].toString();
    // sendDate = json['sendDate'];
    responseStatuse = json['statuse'].toString();
    response = json['replay'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['titele'] = title;
    data['content'] = content;
    // data['sendDate'] = this.sendDate;
    return data;
  }
}
