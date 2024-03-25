import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_api_coordinate_model.freezed.dart';

@freezed
abstract class FirebaseApiCoordinateModel with _$FirebaseApiCoordinateModel {
  factory FirebaseApiCoordinateModel(
      {required double longitude,
      required double latitude}) = _FirebaseApiCoordinateModel;
}
