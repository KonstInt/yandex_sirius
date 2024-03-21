import 'dart:async';

import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class UserUseCase {
  final StreamController<UserModel> _userStreamController;
  UserUseCase()
      : _userStreamController = StreamController<UserModel>.broadcast();

  void writeUser(UserModel user) {
    _userStreamController.add(user);
  }

  StreamController<UserModel> get broadcast => _userStreamController;
}
