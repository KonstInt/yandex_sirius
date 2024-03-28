import 'dart:async';

import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/coordinates/coordinates_repository.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/remote/remote_map_repository.dart';

class MapManager {
  MapManager(
      {required this.remoteMapRepository,
      required this.userUseCase,
      required this.userCoordinatesRepository}) {
    userUseCase.broadcast.listen((event) {
      _friendsTag = event.friendList
          .map((friend) => MapTagModel(
              photoUrl: friend.photoUrl,
              id: friend.id,
              coordinate: CoordinateModel(longitude: 0.0, latitude: 0.0)))
          .toList();
      if (isStartTrackFriendCallFlag) {
        startTrackFriends();
      }
    });
  }
  final RemoteMapRepository remoteMapRepository;
  final UserCoordinatesRepository userCoordinatesRepository;
  final UserUseCase userUseCase;
  late final StreamController<CoordinateModel> _pollingController;
  List<MapTagModel> _friendsTag = [];
  bool isStartTrackFriendCallFlag = false;

  Future<Stream<List<MapTagModel>>> startTrackFriends() {
    return remoteMapRepository.getFriendCoordinateStream(_friendsTag);
  }

  Stream<CoordinateModel> startSelfCoordinatePoling() {
    _pollingController = StreamController();
    //TODO:
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      _pollingController.add(await userCoordinatesRepository.getCoordinates());
    });
    return _pollingController.stream;
  }

  void stopPoling() {
    _pollingController.close();
  }
}
