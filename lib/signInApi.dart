import 'dart:convert';
import 'package:http/http.dart' as http;

class User {
  String name;
  String email;
  String password;

  User({
    required this.name,
    required this.email,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }

  Future<void> createUser() async {
    const url = 'local host';

    final response = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(toJson()),
    );

    if (response.statusCode == 200) {
      // User created successfully
      print('User created!');
    } else {
      // Error creating user
      print('Failed to create user. Error: ${response.statusCode}');
    }
  }
}
