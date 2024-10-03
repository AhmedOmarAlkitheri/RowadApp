class User {
  String? token;
  String? refreshToken;
  int? id;
  String? username;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? image;
  String? password;

  User(
      {this.token,
      this.refreshToken,
      this.id,
      this.username,
      this.email,
      this.firstName,
      this.lastName,
      this.gender,
      this.password,
      this.image});

  User.fromJson(Map<String, dynamic> json) {
    token = json['accessToken'];
    refreshToken = json['refreshToken'];
    id = json['id'];
    username = json['username'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    gender = json['gender'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessToken'] = token;
    data['refreshToken'] = refreshToken;
    data['id'] = id;
    data['username'] = username;
    data['email'] = email;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['gender'] = gender;
    data['image'] = image;
    return data;
  }

  Map<String, String> authData() {
    Map<String, String> loginInfo = {};
    loginInfo["username"] = username!;
    loginInfo["password"] = password!;
    return loginInfo;
  }
}
