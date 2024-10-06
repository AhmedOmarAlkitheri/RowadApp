class Registrationmodel {
  String? full_name;
  String? date_of_birth;
  String? place_of_birth;
  String? current_residence;
  String? current_residence_details;
  String? area;
  String? governorate;
  String? health_conditions;
  String? school_name;
  String? last_grade_percentage;
  String? next_grade;
  String? skills_hobbies;
  String? desired_school;
  String? achievements_participations;
  String? future_ambitions;
  String? reason_for_joining;
  String? guardian_name;
  String? relationship;
  String? guardian_occupation;
  String? guardian_mobile;
  String? phone_number;
  String? mobile_number;
  // String? image;

  Registrationmodel({
    this.full_name,
    this.date_of_birth,
    this.place_of_birth,
    this.current_residence,
    this.current_residence_details,
    this.area,
    this.governorate,
    this.health_conditions,
    this.school_name,
    this.last_grade_percentage,
    this.next_grade,
    this.skills_hobbies,
    this.desired_school,
    this.achievements_participations,
    this.future_ambitions,
    this.reason_for_joining,
    this.guardian_name,
    this.relationship,
    this.guardian_occupation,
    this.guardian_mobile,
    this.phone_number,
    this.mobile_number,
  });
  Registrationmodel.fromJson(Map<String, dynamic> json) {
    full_name = json['full_name'];
    date_of_birth = json['date_of_birth'];
    place_of_birth = json['place_of_birth'];
    current_residence = json['current_residence'];
    current_residence_details = json['current_residence_details'];
    area = json['area'];
    governorate = json['governorate'];
    health_conditions = json['health_conditions'];
    school_name = json['school_name'];
    last_grade_percentage = json['last_grade_percentage'];
    next_grade = json['next_grade'];
    skills_hobbies = json['skills_hobbies'];
    desired_school = json['desired_school'];
    achievements_participations = json['achievements_participations'];
    future_ambitions = json['future_ambitions'];
    reason_for_joining = json['reason_for_joining'];
    guardian_name = json['guardian_name'];
    relationship = json['relationship'];
    guardian_occupation = json['guardian_occupation'];
    guardian_mobile = json['guardian_mobile'];
    phone_number = json['phone_number'];
    mobile_number = json['mobile_number'];
    // image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['full_name'] = full_name;
    data['date_of_birth'] = date_of_birth;
    data['place_of_birth'] = place_of_birth;
    data['current_residence'] = current_residence;
    data['current_residence_details'] = current_residence_details;
    data['area'] = area;
    data['governorate'] = governorate;
    data['health_conditions'] = health_conditions;
    data['school_name'] = school_name;
    data['last_grade_percentage'] = last_grade_percentage;
    data['next_grade'] = next_grade;
    data['skills_hobbies'] = skills_hobbies;
    data['desired_school'] = desired_school;
    data['achievements_participations'] = achievements_participations;
    data['future_ambitions'] = future_ambitions;
    data['reason_for_joining'] = reason_for_joining;
    data['guardian_name'] = guardian_name;
    data['relationship'] = relationship;
    data['guardian_occupation'] = guardian_occupation;
    data['guardian_mobile'] = guardian_mobile;
    data['phone_number'] = phone_number;
    data['mobile_number'] = mobile_number;
    //  data['image']= image ;
    return data;
  }
}
