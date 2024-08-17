import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUserProfile();
}
