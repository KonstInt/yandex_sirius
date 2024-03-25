import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

abstract class LocalStorageRepository {
  Future<List<MapTagModel>> getMapTags();
  Future<CoordinateModel> getUserCoordinate();
  Future<List<MapTagModel>> setMapTags(List<MapTagModel> mapTags);
  Future<CoordinateModel> setUserCoordinate(CoordinateModel coordinates);
}
