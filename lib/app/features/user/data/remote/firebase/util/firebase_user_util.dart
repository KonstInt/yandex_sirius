import 'package:yandex_sirius/app/features/user/data/remote/firebase/mappers/firebase_user_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class FirebaseUserUtil {
  FirebaseUserUtil({required this.mapper, required this.service});
  final FirebaseUserService service;
  final FirebaseUserMapper mapper;

  Future<UserModel> getUser(String userId) async {
    final apiResult = await service.getUser(userId);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> signUp(
      UserModel user, String login, String password) async {
    final apiUser = mapper.userModelToApi(user);
    final apiResult = await service.signUp(apiUser, login, password);
    //TODO: Nulllable res !!!!
    return mapper.userModelFromApi(apiResult!);
  }

  Future<UserModel> signIn(String login, String password) async {
    final apiResult = await service.signIn(login, password);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> updateUser(UserModel user) async {
    final apiUser = mapper.userModelToApi(user);
    final apiResult = await service.updateUser(apiUser);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> updateAvatar(String userId, String photoAvatar) async {
    final apiResult = await service.updateAvatar(userId, photoAvatar);
    return mapper.userModelFromApi(apiResult);
  }
}
