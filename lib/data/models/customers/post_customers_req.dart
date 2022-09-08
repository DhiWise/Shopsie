class PostCustomersReq {
  String? email;
  String? firstName;
  String? lastName;
  String? password;

  PostCustomersReq({this.email, this.firstName, this.lastName, this.password});

  PostCustomersReq.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.email != null) {
      data['email'] = this.email;
    }
    if (this.firstName != null) {
      data['first_name'] = this.firstName;
    }
    if (this.lastName != null) {
      data['last_name'] = this.lastName;
    }
    if (this.password != null) {
      data['password'] = this.password;
    }
    return data;
  }
}
