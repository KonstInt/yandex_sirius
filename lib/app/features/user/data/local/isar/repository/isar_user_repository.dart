import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/data/local/isar/util/isar_user_util.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/local_user_repository.dart';

class IsarUserRepository extends LocalUserRepository {
  IsarUserRepository({required this.util, required this.userUseCase});
  final IsarUserUtil util;
  final UserUseCase userUseCase;
  @override
  Future<UserModel> saveUser(UserModel user) async {
    final res = await util.saveUser(user);
    userUseCase.writeUser(res);
    return res;
  }

  @override
  Future<UserModel> loadUser() async {
    final res = await util.loadUser();
    userUseCase.writeUser(res);
    return res;
  }

  @override
  Future<bool> deleteUser() async {
    final res = await util.deleteUser();
    return res;
  }
}
