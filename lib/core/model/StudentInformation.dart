class StuedntInformation {
  String? studentId;
  String? applicantId;
  String? studentName;
  String? dateOfBerth;
  String? governorate;
  String? directorate;
  String? area;
  String? classroom;
  String? school;
  String? studentPhone;
  String? guardianPhone;
  String? roomId;

  StuedntInformation(
      {this.studentId,
      this.applicantId,
      this.studentName,
      this.dateOfBerth,
      this.governorate,
      this.directorate,
      this.area,
      this.classroom,
      this.school,
      this.studentPhone,
      this.guardianPhone,
      this.roomId});

  StuedntInformation.fromJson(Map<String, dynamic> json) {
    studentId = json['student_id'];
    applicantId = json['applicant_id'];
    studentName = json['student_name'];
    dateOfBerth = json['date_of_berth'];
    governorate = json['governorate'];
    directorate = json['directorate'];
    area = json['area'];
    classroom = json['classroom'];
    school = json['school'];
    studentPhone = json['student_phone'];
    guardianPhone = json['guardian_phone'];
    roomId = json['room_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['student_id'] = this.studentId;
    data['applicant_id'] = this.applicantId;
    data['student_name'] = this.studentName;
    data['date_of_berth'] = this.dateOfBerth;
    data['governorate'] = this.governorate;
    data['directorate'] = this.directorate;
    data['area'] = this.area;
    data['classroom'] = this.classroom;
    data['school'] = this.school;
    data['student_phone'] = this.studentPhone;
    data['guardian_phone'] = this.guardianPhone;
    data['room_id'] = this.roomId;
    return data;
  }
}
