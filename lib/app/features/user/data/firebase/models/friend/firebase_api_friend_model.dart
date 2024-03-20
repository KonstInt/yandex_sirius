import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_api_friend_model.freezed.dart';
part 'firebase_api_friend_model.g.dart';

@freezed
class FirebaseApiFriendModel with _$FirebaseApiFriendModel {
  factory FirebaseApiFriendModel(
      {required String id,
      required String photoUrl,}) = _FirebaseApiFriendModel;
  factory FirebaseApiFriendModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseApiFriendModelFromJson(json);
}
