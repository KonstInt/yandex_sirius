import 'package:yandex_sirius/app/features/user/data/local/isar/mappers/isar_user_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class IsarUserUtil {
  final IsarUserService service;
  final IsarUserMapper mapper;
  IsarUserUtil({required this.mapper, required this.service});

  Future<UserModel> saveUser(UserModel user) async {
    var apiUser = mapper.userModelToApi(user);
    var apiResult = await service.saveUser(apiUser);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> loadUser() async {
    var apiResult = await service.loadUser();
    return mapper.userModelFromApi(apiResult);
  }

  Future<bool> deleteUser() async {
    var res = await service.deleteUser();
    return res;
  }
}
