class Compliant {
  String? id;
  String? title;
  String? content;
  // String? sendDate;
  bool? responseStatuse;
  String? response;

  Compliant(
      {this.id,
      this.title,
      // this.sendDate,
      this.content,
      this.responseStatuse,
      this.response});

  Compliant.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['titele'];
    content = json['content'];
    // sendDate = json['sendDate'];
    responseStatuse = json['statuse'];
    response = json['replay'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['titele'] = title;
    data['content'] = content;
    // data['sendDate'] = this.sendDate;
    return data;
  }
}
