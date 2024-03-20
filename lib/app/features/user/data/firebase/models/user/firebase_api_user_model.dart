import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/user/data/firebase/models/friend/firebase_api_friend_model.dart';

part 'firebase_api_user_model.freezed.dart';
part 'firebase_api_user_model.g.dart';

@freezed
class FirebaseApiUserModel with _$FirebaseApiUserModel {
  factory FirebaseApiUserModel(
      {required String id,
      required String name,
      required String secondName,
      required String nickname,
      required String? photoUrl,
      required List<FirebaseApiFriendModel> friendList,
      required bool isOnline,
      required bool isGeoTrackingOn}) = _FirebaseApiUserModel;
  factory FirebaseApiUserModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseApiUserModelFromJson(json);
}
