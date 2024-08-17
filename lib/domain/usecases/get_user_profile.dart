import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';
import 'package:clean_architecture_basic_flutter/domain/repositories/user_repository.dart';

class GetUserProfile {
  final UserRepository repository;

  GetUserProfile(this.repository);

  Future<User> execute() {
    return repository.getUserProfile();
  }
}