import 'package:yandex_sirius/app/features/user/data/remote/firebase/mappers/firebase_friend_mapper.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class FirebaseUserMapper {
  FirebaseUserMapper({required this.friendMapper});
  FirebaseFriendMapper friendMapper;
  UserModel userModelFromApi(FirebaseApiUserModel model) {
    return UserModel(
        id: model.id,
        name: model.name,
        email: model.email,
        secondName: model.secondName,
        nickname: model.nickname,
        photoUrl: model.photoUrl,
        friendList: model.friendList
            .map((e) => friendMapper.userModelFromApi(e))
            .toList(),
        isOnline: model.isOnline,
        isGeoTrackingOn: model.isGeoTrackingOn);
  }

  FirebaseApiUserModel userModelToApi(UserModel model) {
    return FirebaseApiUserModel(
        id: model.id,
        name: model.name,
        secondName: model.secondName,
        email: model.email,
        nickname: model.nickname,
        photoUrl: model.photoUrl,
        friendList: model.friendList
            .map((e) => friendMapper.userModelToApi(e))
            .toList(),
        isOnline: model.isOnline,
        isGeoTrackingOn: model.isGeoTrackingOn);
  }
}
