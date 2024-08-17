import 'package:flutter/material.dart';
import 'package:clean_architecture_basic_flutter/domain/entities/user.dart';
import 'package:clean_architecture_basic_flutter/domain/usecases/get_user_profile.dart';
// import 'package:toktik/domain/entities/video_post.dart';
// import 'package:toktik/domain/repositories/video_posts_repository.dart';


class UserAccountProvider extends ChangeNotifier {
  final GetUserProfile getUserProfileUseCase;
  User user = User(id: 0, name: "Loading...");

  UserAccountProvider({required this.getUserProfileUseCase});


  Future<void> getUserProfile() async {
    await Future.delayed(const Duration(seconds: 2));

    user = await getUserProfileUseCase.execute();
    notifyListeners();
  }
}