import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';
import 'package:clean_architecture_basic_flutter/domain/repositories/user_repository.dart';

class UserUseCases {
  final UserRepository repository;

  UserUseCases(this.repository);

  Future<User> getUserProfile() {
    return repository.getUserProfile();
  }
}
