import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

part 'firebase_api_map_tag_model.freezed.dart';

@freezed
abstract class FirebaseApiMapTagModel with _$FirebaseApiMapTagModel {
  factory FirebaseApiMapTagModel(
      {required String photoUrl,
      required String id,
      required CoordinateModel coordinate,
      @Default(Colors.pink) Color color}) = _FirebaseApiMapTagModel;
}
