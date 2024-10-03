class Registrationmodel {
  String? studName;
  String? dateOfBirth;
  String? placeOfBirth;
  String? currentplaceResidence;
  String? area;
  String? directorate;
  String? disease;
  String? school_name;
  String? last_grade_percentage;
  String? next_grade;
  String? skills;
  String? favSchool;
  String? participations;
  String? futureAmbitions;
  String? joinSchool;
  String? guardianName;
  String? relationship;
  String? profession;
  String? guardianPhone;
  String? phone;
  String? whatsapp;
  String? image;

  Registrationmodel(
      {this.studName,
      this.dateOfBirth,
      this.placeOfBirth,
      this.currentplaceResidence,
      this.area,
      this.directorate,
      this.disease,
      this.school_name,
      this.last_grade_percentage,
      this.next_grade,
      this.skills,
      this.favSchool,
      this.participations,
      this.futureAmbitions,
      this.joinSchool,
      this.guardianName,
      this.relationship,
      this.profession,
      this.guardianPhone,
      this.phone,
      this.whatsapp,
      this.image});

  Registrationmodel.fromJson(Map<String, dynamic> json) {
    studName = json['stud_name'];
    dateOfBirth = json['date_of_birth'];
    placeOfBirth = json['place_of_birth'];
    currentplaceResidence = json['currentplace_residence'];
    area = json['area'];
    directorate = json['directorate'];
    disease = json['disease'];
    school_name = json['school'];
    last_grade_percentage = json['last_grade_percentage'];
    next_grade = json['next_grade'];
    skills = json['skills'];
    favSchool = json['fav_school'];
    participations = json['participations'];
    futureAmbitions = json['future_ambitions'];
    joinSchool = json['join_school'];
    guardianName = json['guardian_name'];
    relationship = json['relationship'];
    profession = json['profession'];
    guardianPhone = json['guardian_phone'];
    phone = json['phone'];
    whatsapp = json['whatsapp'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stud_name'] = studName;
    data['date_of_birth'] = dateOfBirth;
    data['place_of_birth'] = placeOfBirth;
    data['currentplace_residence'] = currentplaceResidence;
    data['area'] = area;
    data['directorate'] = directorate;
    data['disease'] = disease;
    data['school'] = school_name;
    data['last_grade_percentage'] = last_grade_percentage;
    data['next_grade'] = next_grade;
    data['skills'] = skills;
    data['fav_school'] = favSchool;
    data['participations'] = participations;
    data['future_ambitions'] = futureAmbitions;
    data['join_school'] = joinSchool;
    data['guardian_name'] = guardianName;
    data['relationship'] = relationship;
    data['profession'] = profession;
    data['guardian_phone'] = guardianPhone;
    data['phone'] = phone;
    data['whatsapp'] = whatsapp;
    data['image'] = image;
    return data;
  }
}
