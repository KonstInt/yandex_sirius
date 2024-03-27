import 'dart:async';

import 'package:yandex_sirius/app/features/map/data/firebase/mappers/firebase_coordinate_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/mappers/firebase_map_tag_mapper.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/service/firebase_map_service.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

class FirebaseMapUtil {
  FirebaseMapUtil(
      {required this.mapMapper,
      required this.service,
      required this.coordinateMapper});
  final FirebaseMapTagMapper mapMapper;
  final FirebaseMapService service;
  final FirebaseCoordinateMapper coordinateMapper;
  Future<Stream<List<MapTagModel>>> getFriendCoordinateStream(
      List<MapTagModel> friendsList) async {
    return (await service.getFriendCoordinateStream(
      friendsList.map(mapMapper.toApi).toList(),
    )).map((s) => s.map(mapMapper.fromApi).toList());
  }

  Future<CoordinateModel> setUserCoordinateStream(
      CoordinateModel coordinates) async {
    return coordinateMapper.fromApi(
      await service.setUserCoordinateStream(
        coordinateMapper.toApi(coordinates),
      ),
    );
  }

  void closeFriendsStream() {
    service.closeFriendsStream();
  }
}
