import 'package:go_router/go_router.dart';
import 'package:clean_architecture_basic_flutter/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()),
]);
