import 'package:yandex_sirius/app/features/map/data/local_coordinates/util/local_coordinates_util.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/coordinates/coordinates_repository.dart';

class LocalCoordinatesRepository extends UserCoordinatesRepository {
  LocalCoordinatesRepository({required this.util});

  final LocalCoordinatesUtil util;
  @override
  Future<CoordinateModel> getCoordinates() async {
    return util.getLocalCoordinates();
  }
}
