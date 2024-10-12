import 'package:rowadapp/core/model/Month.dart';
import 'package:rowadapp/core/model/Program.dart';

class Evaluation {
  Program? computer;
  Program? english;
  Program? road;
  Program? yearresult;
  List<Moths>? moths;

  Evaluation(
      {this.computer, this.english, this.road, this.yearresult, this.moths});

 Evaluation.fromJson(Map<String, dynamic> json) {

  computer = json['computer'] != null ? Program.fromJson(json['computer']) : null;
  english = json['english'] != null ? Program.fromJson(json['english']) : null;
  road = json['road'] != null ? Program.fromJson(json['road']) : null;
  yearresult = json['yearresult'] != null ? Program.fromJson(json['yearresult']) : null;

  if (json['moths'] != null) {
    moths = <Moths>[];
    json['moths'].forEach((v) {
      moths!.add(Moths.fromJson(v));
    });
  }
}


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.computer != null) {
      data['computer'] = this.computer!.toJson();
    }
    if (this.english != null) {
      data['english'] = this.english!.toJson();
    }
    if (this.road != null) {
      data['road'] = this.road!.toJson();
    }
    if (this.yearresult != null) {
      data['yearresult'] = this.yearresult!.toJson();
    }
    if (this.moths != null) {
      data['moths'] = this.moths!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
