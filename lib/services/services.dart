import 'dart:convert';

import 'package:servicios_modelos/models/users.dart';
import 'package:http/http.dart' as http;

class UserService{

static const _baseUrl = 'https://dummyjson.com';

  Future<List<User>> getUsers ({int limit = 5}) async {
    final url = Uri.parse('$_baseUrl/users?limit=$limit');
    final response = await http.get(url);

    if (response.statusCode != 200){
      throw Exception('No se pudo completar la consulta: ${response.statusCode}');
    }

    final Map<String, dynamic> data = jsonDecode(response.body);

    final List<dynamic> jsonList = data['users'];

    
    return jsonList.map((j) => User.fromJson(j)).toList();

  }

}