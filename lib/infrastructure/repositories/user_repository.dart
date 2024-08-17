import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';
import 'package:clean_architecture_basic_flutter/domain/repositories/user_repository.dart';
import 'package:clean_architecture_basic_flutter/infrastructure/datasources/user_data_source.dart';

class UserRepositoryImpl implements UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl({required this.userDataSource});

  @override
  Future<User> getUserProfile() async {
    await Future.delayed(const Duration(seconds: 2));
    return await userDataSource.getUserProfile();
  }
}
