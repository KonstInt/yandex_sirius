import 'package:yandex_sirius/app/features/map/data/local_coordinates/mappers/local_coordinates_api_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/local_coordinates/service/local_coordinates_service.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';

class LocalCoordinatesUtil {
  LocalCoordinatesUtil({required this.mapper, required this.service});
  LocalCoordinatesService service;
  LocalCoordinatesApiCoordinateMapper mapper;

  Future<CoordinateModel> getLocalCoordinates() async {
    return mapper.fromApi(await service.getLocalCoordinates());
  }
}
