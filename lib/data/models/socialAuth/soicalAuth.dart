class SocialAuth{
  String? email;
  String? firstName;
  String? lastName;
  String? password;
  SocialAuth({this.email,this.firstName,this.lastName, this.password});

  SocialAuth.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    firstName=json['firstName'];
    lastName=json['lastName'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.firstName != null) {
      data['firstName'] = this.firstName;
    }
    if (this.lastName != null) {
      data['lastName'] = this.lastName;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    return data;
  }

}