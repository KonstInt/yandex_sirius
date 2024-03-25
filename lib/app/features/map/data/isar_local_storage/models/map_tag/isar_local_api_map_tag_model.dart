import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

part 'isar_local_api_map_tag_model.freezed.dart';

@freezed
abstract class IsarLocalApiMapTagModel with _$IsarLocalApiMapTagModel {
  factory IsarLocalApiMapTagModel(
      {required String photoUrl,
      required String id,
      required CoordinateModel coordinate,
      @Default(Colors.pink) Color color}) = _IsarLocalApiMapTagModel;
}
