// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_api_map_tag_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirebaseApiMapTagModelImpl _$$FirebaseApiMapTagModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FirebaseApiMapTagModelImpl(
      photoUrl: json['photoUrl'] as String?,
      id: json['id'] as String,
      coordinate: FirebaseApiCoordinateModel.fromJson(
          json['coordinate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FirebaseApiMapTagModelImplToJson(
        _$FirebaseApiMapTagModelImpl instance) =>
    <String, dynamic>{
      'photoUrl': instance.photoUrl,
      'id': instance.id,
      'coordinate': instance.coordinate.toJson(),
    };
