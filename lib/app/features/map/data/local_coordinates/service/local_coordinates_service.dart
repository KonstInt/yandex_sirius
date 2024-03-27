import 'package:yandex_sirius/app/features/map/data/local_coordinates/models/coordinate/local_coordinates_api_coordinate_model.dart';

class LocalCoordinatesService {
  Future<LocalCoordinatesApiCoordinateModel> getLocalCoordinates() async {
    //TODO:
    return LocalCoordinatesApiCoordinateModel(longitude: 50, latitude: 50);
  }
}
