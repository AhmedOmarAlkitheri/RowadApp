









// class ApiResponse {
//   int? code;
//   String? message;
//   List<Data>? data;

//   ApiResponse({this.code, this.message, this.data});

//   ApiResponse.fromJson(Map<String, dynamic> json) {
//     code = json['code'];
//     message = json['message'];
//     if (json['data'] != null) {
//       data = <Data>[];
//       json['data'].forEach((v) {
//         data!.add(new Data.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['code'] = this.code;
//     data['message'] = this.message;
//     if (this.data != null) {
//       data['data'] = this.data!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Data {
//   String? studentId;
//   String? studName;
//   String? dateOfBirth;
//   String? placeOfBirth;
//   String? currentplaceResidence;
//   String? currentResidenceDetails;
//   String? area;
//   String? directorate;
//   String? disease;
//   String? schoolName;
//   String? lastGradePercentage;
//   String? nextGrade;
//   String? skills;
//   String? favSchool;
//   String? participations;
//   String? futureAmbitions;
//   String? joinSchool;
//   String? guardianName;
//   String? relationship;
//   String? profession;
//   String? guardianPhone;
//   String? phone;
//   String? whatsapp;
//   String? image;

//   Data(
//       {this.studentId,
//       this.studName,
//       this.dateOfBirth,
//       this.placeOfBirth,
//       this.currentplaceResidence,
//       this.currentResidenceDetails,
//       this.area,
//       this.directorate,
//       this.disease,
//       this.schoolName,
//       this.lastGradePercentage,
//       this.nextGrade,
//       this.skills,
//       this.favSchool,
//       this.participations,
//       this.futureAmbitions,
//       this.joinSchool,
//       this.guardianName,
//       this.relationship,
//       this.profession,
//       this.guardianPhone,
//       this.phone,
//       this.whatsapp,
//       this.image});

//   Data.fromJson(Map<String, dynamic> json) {
//     studentId = json['student_id'];
//     studName = json['studName'];
//     dateOfBirth = json['dateOfBirth'];
//     placeOfBirth = json['placeOfBirth'];
//     currentplaceResidence = json['currentplaceResidence'];
//     currentResidenceDetails = json['current_residence_details'];
//     area = json['area'];
//     directorate = json['directorate'];
//     disease = json['disease'];
//     schoolName = json['school_name'];
//     lastGradePercentage = json['last_grade_percentage'];
//     nextGrade = json['next_grade'];
//     skills = json['skills'];
//     favSchool = json['favSchool'];
//     participations = json['participations'];
//     futureAmbitions = json['futureAmbitions'];
//     joinSchool = json['joinSchool'];
//     guardianName = json['guardianName'];
//     relationship = json['relationship'];
//     profession = json['profession'];
//     guardianPhone = json['guardianPhone'];
//     phone = json['phone'];
//     whatsapp = json['whatsapp'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['student_id'] = this.studentId;
//     data['studName'] = this.studName;
//     data['dateOfBirth'] = this.dateOfBirth;
//     data['placeOfBirth'] = this.placeOfBirth;
//     data['currentplaceResidence'] = this.currentplaceResidence;
//     data['current_residence_details'] = this.currentResidenceDetails;
//     data['area'] = this.area;
//     data['directorate'] = this.directorate;
//     data['disease'] = this.disease;
//     data['school_name'] = this.schoolName;
//     data['last_grade_percentage'] = this.lastGradePercentage;
//     data['next_grade'] = this.nextGrade;
//     data['skills'] = this.skills;
//     data['favSchool'] = this.favSchool;
//     data['participations'] = this.participations;
//     data['futureAmbitions'] = this.futureAmbitions;
//     data['joinSchool'] = this.joinSchool;
//     data['guardianName'] = this.guardianName;
//     data['relationship'] = this.relationship;
//     data['profession'] = this.profession;
//     data['guardianPhone'] = this.guardianPhone;
//     data['phone'] = this.phone;
//     data['whatsapp'] = this.whatsapp;
//     data['image'] = this.image;
//     return data;
//   }
// }