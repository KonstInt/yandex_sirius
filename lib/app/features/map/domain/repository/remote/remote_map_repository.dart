import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

abstract class RemoteMapRepository {
  Future<Stream<List<MapTagModel>>> getFriendCoordinateStream(
      List<MapTagModel> friendsList);
  Future<MapTagModel> sendUserCoordinate(MapTagModel mapTag);
}
