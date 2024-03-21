import 'package:freezed_annotation/freezed_annotation.dart';

part 'isar_api_friend_model.freezed.dart';
part 'isar_api_friend_model.g.dart';

@freezed
class IsarApiFriendModel with _$IsarApiFriendModel {
  factory IsarApiFriendModel({
    required String id,
    required String photoUrl,
  }) = _IsarApiFriendModel;
  factory IsarApiFriendModel.fromJson(Map<String, dynamic> json) =>
      _$IsarApiFriendModelFromJson(json);
}
