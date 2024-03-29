import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/models/coordinate/firebase_api_coordinate_model.dart';

part 'firebase_api_map_tag_model.freezed.dart';
part 'firebase_api_map_tag_model.g.dart';

@freezed
class FirebaseApiMapTagModel with _$FirebaseApiMapTagModel {
  @JsonSerializable(explicitToJson: true)
  factory FirebaseApiMapTagModel({
    required String? photoUrl,
    required String id,
    required FirebaseApiCoordinateModel coordinate,
  }) = _FirebaseApiMapTagModel;
  factory FirebaseApiMapTagModel.fromJson(Map<String, dynamic> json) =>
      _$FirebaseApiMapTagModelFromJson(json);
}
