import 'package:yandex_sirius/app/features/user/data/local/isar/mappers/isar_user_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class IsarUserUtil {
  IsarUserUtil({required this.mapper, required this.service});
  final IsarUserService service;
  final IsarUserMapper mapper;

  Future<UserModel> saveUser(UserModel user) async {
    final apiUser = mapper.userModelToApi(user);
    final apiResult = await service.saveUser(apiUser);
    return mapper.userModelFromApi(apiResult);
  }

  Future<UserModel> loadUser() async {
    final apiResult = await service.loadUser();
    return mapper.userModelFromApi(apiResult);
  }

  Future<bool> deleteUser() async {
    final res = await service.deleteUser();
    return res;
  }
}
