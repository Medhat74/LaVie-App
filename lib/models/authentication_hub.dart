class AuthenticationHub {
  String? firstName;
  String? lastName;
  String? email;
  String? password;

  AuthenticationHub({this.firstName, this.lastName, this.email, this.password});

  AuthenticationHub.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}