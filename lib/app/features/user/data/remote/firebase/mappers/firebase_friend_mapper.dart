import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/friend/firebase_api_friend_model.dart';
import 'package:yandex_sirius/app/features/user/domain/models/friend/friend_model.dart';

class FirebaseFriendMapper {
  FriendModel userModelFromApi(FirebaseApiFriendModel model) {
    return FriendModel(id: model.id, photoUrl: model.photoUrl);
  }

  FirebaseApiFriendModel userModelToApi(FriendModel model) {
    return FirebaseApiFriendModel(id: model.id, photoUrl: model.photoUrl);
  }
}
