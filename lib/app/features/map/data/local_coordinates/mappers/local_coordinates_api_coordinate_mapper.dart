import 'package:yandex_sirius/app/features/map/data/local_coordinates/models/coordinate/local_coordinates_api_coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

class LocalCoordinatesApiCoordinateMapper {
  LocalCoordinatesApiCoordinateModel toApi(CoordinateModel model) {
    return LocalCoordinatesApiCoordinateModel(longitude: model.longitude, latitude: model.latitude);
  }

  CoordinateModel fromApi(LocalCoordinatesApiCoordinateModel model) {
    return CoordinateModel(longitude: model.longitude, latitude: model.latitude);
  }
}
