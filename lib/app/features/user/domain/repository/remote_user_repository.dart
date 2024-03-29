import 'dart:io';

import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

abstract class RemoteUserRepository {
  Future<UserModel> getUser(String userId);
  Future<UserModel> signUp(UserModel user, String login, String password);
  Future<UserModel?> getCurrentUser();
  Future<bool> hasUser(String email);
  Future<UserModel> updateUser(UserModel user);
  Future<UserModel> updateAvatar(String userId, File photoAvatar);
  Future<UserModel> signIn(String login, String password);
}
