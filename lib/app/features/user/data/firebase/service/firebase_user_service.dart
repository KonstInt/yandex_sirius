import 'package:yandex_sirius/app/features/user/data/firebase/models/friend/firebase_api_friend_model.dart';
import 'package:yandex_sirius/app/features/user/data/firebase/models/user/firebase_api_user_model.dart';

class FirebaseUserService {
  //TODO: FirebaseServiceImpl

  Future<FirebaseApiUserModel> getUser(String userId) async {
    //TODO:
    throw UnimplementedError();
  }

  Future<List<FirebaseApiFriendModel>> getFriends(String userId) async {
    //TODO:
    throw UnimplementedError();
  }

  Future<FirebaseApiUserModel> signUp(
      FirebaseApiUserModel apiUserModel, String login, String password) async {
    //TODO:
    throw UnimplementedError();
  }

  Future<FirebaseApiUserModel> signIn(String login, String password) async {
    //TODO:
    throw UnimplementedError();
  }

  Future<FirebaseApiUserModel> updateUser(FirebaseApiUserModel user) async {
    //TODO:
    throw UnimplementedError();
  }

  Future<FirebaseApiUserModel> updateAvatar(
      String userId, String photoAvatar) async {
    //TODO:
    throw UnimplementedError();
  }
}
