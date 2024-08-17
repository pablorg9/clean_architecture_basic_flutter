import 'package:flutter/material.dart';
import 'package:clean_architecture_basic_flutter/domain/usecases/user_use_cases.dart';
import 'package:clean_architecture_basic_flutter/injection_container.dart';
import 'package:clean_architecture_basic_flutter/presentation/providers/user_account_provider.dart';
import 'package:provider/provider.dart';
import 'package:clean_architecture_basic_flutter/config/router/app_router.dart';
import 'package:clean_architecture_basic_flutter/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...InjectionContainer.providers(context),
        ChangeNotifierProvider(
          create: (context) => UserAccountProvider(
            userUseCases: context.read<UserUseCases>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 0).getTheme(),
      ),
    );
  }
}
