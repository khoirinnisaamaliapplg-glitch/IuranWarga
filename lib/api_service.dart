import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "https://dummyjson.com";
  String? _accessToken;
  Map<String, dynamic>? _userData; 

  // Login
  Future<String> login(String username, String password) async {
    final response = await http.post(
      Uri.parse("$baseUrl/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: json.encode({"username": username, "password": password}),
    );

    print("Status Code: ${response.statusCode}");
    print("Response Body: ${response.body}");

    final data = json.decode(response.body);

    if (response.statusCode == 200 && data["accessToken"] != null) {
      _accessToken = data["accessToken"];
      _userData = data; 
      return _accessToken!;
    } else {
      throw Exception(data["message"] ?? "Login gagal");
    }
  }

  // Ambil profile user login
  Future<Map<String, dynamic>> getUserProfile() async {
    if (_userData == null) {
      throw Exception("Belum login! Silakan login dulu.");
    }
    return _userData!;
  }
}
