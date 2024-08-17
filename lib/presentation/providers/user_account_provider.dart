import 'package:flutter/material.dart';
import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';
import 'package:clean_architecture_basic_flutter/domain/usecases/user_use_cases.dart';

class UserAccountProvider extends ChangeNotifier {
  final UserUseCases userUseCases;
  User user = User(id: 0, name: "Loading...");

  UserAccountProvider({required this.userUseCases});

  Future<void> getUserProfile() async {
    await Future.delayed(const Duration(seconds: 2));

    user = await userUseCases.getUserProfile();
    notifyListeners();
  }
}
