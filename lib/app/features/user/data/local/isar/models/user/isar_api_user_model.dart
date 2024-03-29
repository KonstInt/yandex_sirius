import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/friend/firebase_api_friend_model.dart';

part 'isar_api_user_model.freezed.dart';
part 'isar_api_user_model.g.dart';

@freezed
class IsarApiUserModel with _$IsarApiUserModel {
  factory IsarApiUserModel(
      {required String id,
      required String name,
      required String secondName,
      required String nickname,
      required String? photoUrl,
      required List<FirebaseApiFriendModel> friendList,
      required bool isOnline,
      required bool isGeoTrackingOn}) = _IsarApiUserModel;
  factory IsarApiUserModel.fromJson(Map<String, dynamic> json) =>
      _$IsarApiUserModelFromJson(json);
}
