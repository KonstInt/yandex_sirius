import 'package:yandex_sirius/app/features/map/data/firebase/models/coordinate/firebase_api_coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

class FirebaseCoordinateMapper {
  CoordinateModel fromApi(FirebaseApiCoordinateModel model) {
    return CoordinateModel(
        latitude: model.latitude, longitude: model.longitude);
  }

  FirebaseApiCoordinateModel toApi(CoordinateModel model) {
    return FirebaseApiCoordinateModel(
        latitude: model.latitude, longitude: model.longitude);
  }
}
