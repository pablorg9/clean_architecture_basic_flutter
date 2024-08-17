import 'package:clean_architecture_basic_flutter/infrastructure/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class UserDataSource {
  Future<UserModel> getUserProfile();
}

class UserDataSourceImpl implements UserDataSource {
  final http.Client client;

  UserDataSourceImpl({required this.client});

  @override
  Future<UserModel> getUserProfile() async {
    final response = await client.get(
      Uri.parse('https://jsonplaceholder.typicode.com/todos/1'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return UserModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load user profile');
    }
  }
}
