// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      secondName: json['secondName'] as String,
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String?,
      friendList: (json['friendList'] as List<dynamic>)
          .map((e) => FriendModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isOnline: json['isOnline'] as bool,
      isGeoTrackingOn: json['isGeoTrackingOn'] as bool,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'secondName': instance.secondName,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'friendList': instance.friendList,
      'isOnline': instance.isOnline,
      'isGeoTrackingOn': instance.isGeoTrackingOn,
    };
