import 'package:flutter/material.dart';
import 'package:clean_architecture_basic_flutter/presentation/providers/user_account_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userAccountProvider = context.watch<UserAccountProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User ID: ${userAccountProvider.user.id}'),
            Text('User Name: ${userAccountProvider.user.name}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                await userAccountProvider.getUserProfile();
              },
              child: const Text('Load User Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
