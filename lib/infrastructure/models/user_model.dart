import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';

class UserModel extends User {
  UserModel({required super.id, required super.name});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
