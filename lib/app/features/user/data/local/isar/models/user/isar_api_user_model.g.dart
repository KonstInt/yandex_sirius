// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_api_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IsarApiUserModelImpl _$$IsarApiUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IsarApiUserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      secondName: json['secondName'] as String,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      friendList: (json['friendList'] as List<dynamic>)
          .map(
              (e) => FirebaseApiFriendModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOnline: json['isOnline'] as bool,
      isGeoTrackingOn: json['isGeoTrackingOn'] as bool,
    );

Map<String, dynamic> _$$IsarApiUserModelImplToJson(
        _$IsarApiUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'secondName': instance.secondName,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'friendList': instance.friendList,
      'isOnline': instance.isOnline,
      'isGeoTrackingOn': instance.isGeoTrackingOn,
    };
