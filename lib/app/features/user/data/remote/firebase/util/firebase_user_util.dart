import 'package:yandex_sirius/app/features/user/data/remote/firebase/mappers/firebase_user_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class FirebaseUserUtil {
  final FirebaseUserService service;
  final FirebaseUserMapper mapper;
  FirebaseUserUtil({required this.mapper, required this.service});

  Future<UserModel> getUser(String userId) async {
    var apiResult = await service.getUser(userId);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> signUp(
      UserModel user, String login, String password) async {
    var apiUser = mapper.userModelToApi(user);
    var apiResult = await service.signUp(apiUser, login, password);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> signIn(String login, String password) async {
    var apiResult = await service.signIn(login, password);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> updateUser(UserModel user) async {
    var apiUser = mapper.userModelToApi(user);
    var apiResult = await service.updateUser(apiUser);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> updateAvatar(String userId, String photoAvatar) async {
    var apiResult = await service.updateAvatar(userId, photoAvatar);
    return mapper.userModelFromApi(apiResult);
  }
}
