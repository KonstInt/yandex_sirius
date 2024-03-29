import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_api_coordinate_model.freezed.dart';
part 'firebase_api_coordinate_model.g.dart';

@freezed
class FirebaseApiCoordinateModel with _$FirebaseApiCoordinateModel {
  factory FirebaseApiCoordinateModel(
      {required double longitude,
      required double latitude}) = _FirebaseApiCoordinateModel;
  factory FirebaseApiCoordinateModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseApiCoordinateModelFromJson(json);
}
