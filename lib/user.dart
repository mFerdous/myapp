/*class User {
  String firstName;
  String lastName;
  String email;
  String password;
  User(this.firstName, this.lastName, this.email, this.password);*/

import 'dart:convert';

User userJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  String username;
  String email;
  String password;

  User({required this.username, required this.email, required this.password});

  factory User.fromJson(Map<String, dynamic> json) => User(
      username: json["username"],
      email: json["email"],
      password: json["password"]);

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "password": password,
      };

  //String get username => username;

  //String get email => email;

  //String get password => password;
}
