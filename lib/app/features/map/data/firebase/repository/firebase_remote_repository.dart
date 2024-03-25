// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:yandex_sirius/app/features/map/data/firebase/util/firebase_map_util.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/remote/remote_map_repository.dart';

class FirebaseRemoteMapRepository extends RemoteMapRepository {
  FirebaseMapUtil util;
  FirebaseRemoteMapRepository({
    required this.util,
  });

  @override
  Future<Stream<MapTagModel>> getFriendCoordinateStream(
      List<MapTagModel> friendsList) {
    return util.getFriendCoordinateStream(friendsList);
  }

  @override
  Future<CoordinateModel> sendUserCoordinate(CoordinateModel coordinate) {
    return util.setUserCoordinateStream(coordinate);
  }
}
