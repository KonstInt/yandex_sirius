import 'dart:async';

import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class UserManager {
  UserManager()
      : _userStreamController = StreamController<UserModel>.broadcast();
  final StreamController<UserModel> _userStreamController;

  void writeUser(UserModel user) {
    _userStreamController.add(user);
  }

  void closeStream() {
    _userStreamController.close();
  }

  Stream<UserModel> get broadcast => _userStreamController.stream;
}
