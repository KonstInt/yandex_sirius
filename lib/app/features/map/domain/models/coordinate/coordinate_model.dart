import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate_model.freezed.dart';

@freezed
abstract class CoordinateModel with _$CoordinateModel {
  factory CoordinateModel({required double longitude, required double latitude}) =
      _CoordinateModel;
}
