
class Program {
  double? sem1;
  double? sem2;

  Program({this.sem1, this.sem2});

  Program.fromJson(Map<String, dynamic> json) {
    sem1 = json['sem1']?.toDouble();
    sem2 = json['sem2']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sem1'] = this.sem1;
    data['sem2'] = this.sem2;
    return data;
  }
}
