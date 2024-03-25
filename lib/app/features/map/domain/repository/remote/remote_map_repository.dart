import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

abstract class RemoteMapRepository {
  Future<Stream<MapTagModel>> getFriendCoordinateStream(
      List<MapTagModel> friendsList);
  Future<CoordinateModel> sendUserCoordinate(CoordinateModel coordinate);
}
