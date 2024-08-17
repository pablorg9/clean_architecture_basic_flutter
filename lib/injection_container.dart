import 'package:flutter/material.dart';
import 'package:clean_architecture_basic_flutter/infrastructure/datasources/user_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:clean_architecture_basic_flutter/domain/repositories/user_repository.dart';
import 'package:clean_architecture_basic_flutter/domain/usecases/get_user_profile.dart';
import 'package:clean_architecture_basic_flutter/infrastructure/repositories/user_repository.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class InjectionContainer {
  static List<SingleChildWidget> providers(BuildContext context) {
    return [
      // External
      Provider<http.Client>(
        create: (_) => http.Client(),
      ),
      
      // DataSources
      Provider<UserDataSource>(
        create: (context) => UserDataSourceImpl(
          client: context.read<http.Client>(),
        ),
      ),
      // Registro del repositorio
      Provider<UserRepository>(
        create: (context) => UserRepositoryImpl(
          userDataSource: context.read<UserDataSource>(),
        ),
      ),
      
      // Registro del caso de uso
      Provider<GetUserProfile>(
        create: (context) => GetUserProfile(
          context.read<UserRepository>(),
        ),
      ),
      
      // Otros providers relacionados pueden añadirse aquí...
    ];
  }
}
