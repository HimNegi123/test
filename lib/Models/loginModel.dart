import 'package:http/http.dart' as http;

class UserModel {
  final String email;
  final String password;

  UserModel({required this.email, required this.password});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      password: json['password'],
    );
  }
  
  Future<void> createUser() async {
    final url = 'http://your-api-endpoint';
    final response = await http.post(
      Uri.parse(url),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 201) {
      // Request successful
      print('User created successfully');
    } else {
      // Request failed
      print('Failed to create user');
    }
  }
}
