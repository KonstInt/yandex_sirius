import 'package:freezed_annotation/freezed_annotation.dart';

part 'isar_local_api_coordinate_model.freezed.dart';

@freezed
abstract class IsarLocalApiCoordinateModel with _$IsarLocalApiCoordinateModel {
  factory IsarLocalApiCoordinateModel(
      {required double longitude,
      required double latitude}) = _IsarLocalCoordinateModel;
}
