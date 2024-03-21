import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/user/domain/models/friend/friend_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {required String id,
      required String name,
      required String secondName,
      required String nickname,
      required String? photoUrl,
      required List<FriendModel> friendList,
      required bool isOnline,
      required bool isGeoTrackingOn}) = _UserModel;
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
