import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/util/firebase_user_util.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/remote_user_repository.dart';

class FirebaseUserRepository extends RemoteUserRepository {
  final FirebaseUserUtil util;
  final UserUseCase userUseCase;
  FirebaseUserRepository({required this.util, required this.userUseCase});
  @override
  Future<UserModel> signUp(
      UserModel user, String login, String password) async {
    var res = await util.signUp(user, login, password);
    userUseCase.writeUser(res);
    return res;
  }

  @override
  Future<UserModel> signIn(String login, String password) async {
    var res = await util.signIn(login, password);
    userUseCase.writeUser(res);
    return res;
  }

  @override
  Future<UserModel> getUser(String userId) async {
    var res = await util.getUser(userId);
    userUseCase.writeUser(res);
    return res;
  }

  @override
  Future<UserModel> updateAvatar(String userId, String photoAvatar) async {
    var res = await util.updateAvatar(userId, photoAvatar);
    userUseCase.writeUser(res);
    return res;
  }

  @override
  Future<UserModel> updateUser(UserModel user) async {
    var res = await util.updateUser(user);
    userUseCase.writeUser(res);
    return res;
  }
}
