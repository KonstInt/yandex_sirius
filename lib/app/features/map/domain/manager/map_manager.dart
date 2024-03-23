import 'dart:async';

import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/remote/remote_map_repository.dart';

class MapManager {
  MapManager({required this.remoteMapRepository, required this.userUseCase}) {
    userUseCase.broadcast.stream.listen((event) {
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
  final UserUseCase userUseCase;
  late final StreamController _pollingController;
  List<MapTagModel> _friendsTag = [];
  bool isStartTrackFriendCallFlag = false;

  Future<Stream<MapTagModel>> startTrackFriends() {
    return remoteMapRepository.getFriendCoordinateStream(_friendsTag);
  }

  void startPoling() {
    _pollingController = StreamController();
  }

  void stopPoling() {
    _pollingController.close();
   
  }
}