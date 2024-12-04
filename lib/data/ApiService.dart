import 'dart:convert';

import 'package:simple_riverpod_project/data/models/User.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static const String base_url = "https://jsonplaceholder.typicode.com/users/";

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(base_url));

    if(response.statusCode == 200){
      List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => User.fromJson(json)).toList();
    }else {
      throw Exception('Failed to load Users data');
    }
  }
}