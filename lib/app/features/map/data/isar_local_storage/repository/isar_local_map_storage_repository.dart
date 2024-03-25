import 'package:yandex_sirius/app/features/map/data/isar_local_storage/util/isar_local_map_util.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/local_storage/local_storage_repository.dart';

class IsarLocalMapStorageRepository extends LocalStorageRepository {
  IsarLocalMapStorageRepository({required this.util});

  final IsarLocalMapUtil util;

  @override
  Future<List<MapTagModel>> getMapTags() async {
    return util.getMapTags();
  }

  @override
  Future<CoordinateModel> getUserCoordinate() async {
    return util.getUserCoordinate();
  }

  @override
  Future<List<MapTagModel>> setMapTags(List<MapTagModel> mapTags) async {
    return util.setMapTags(mapTags);
  }

  @override
  Future<CoordinateModel> setUserCoordinate(CoordinateModel coordinates) async {
    return util.setUserCoordinate(coordinates);
  }
}
