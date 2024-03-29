import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_coordinates_api_coordinate_model.freezed.dart';

@freezed
abstract class LocalCoordinatesApiCoordinateModel
    with _$LocalCoordinatesApiCoordinateModel {
  factory LocalCoordinatesApiCoordinateModel(
      {required double longitude,
      required double latitude}) = _LocalCoordinatesApiCoordinateModel;
}
