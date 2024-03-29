import 'dart:async';

import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/coordinates/coordinates_repository.dart';
import 'package:yandex_sirius/app/features/map/domain/repository/remote/remote_map_repository.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

class MapManager {
  MapManager(
      {required this.remoteMapRepository,
      required this.userUseCase,
      required this.userCoordinatesRepository}) {
    userUseCase.broadcast.listen((event) {
      _user = event;
      if (isStartTrackFriendCallFlag) {
        startTrackFriends();
      }
      if (isStartSelfTrackPoling) {
        startSelfCoordinatePoling();
      }
    });
  }
  final RemoteMapRepository remoteMapRepository;
  final UserCoordinatesRepository userCoordinatesRepository;
  final UserUseCase userUseCase;
  late final StreamController<CoordinateModel> _pollingController;
  UserModel? _user;
  bool isStartTrackFriendCallFlag = false;
  bool isStartSelfTrackPoling = false;
  Future<Stream<List<MapTagModel>>> startTrackFriends() {
    isStartTrackFriendCallFlag = true;
    if (_user != null) {
      final friends = _user!.friendList
          .map((friend) => MapTagModel(
              photoUrl: friend.photoUrl,
              id: friend.id,
              coordinate: CoordinateModel(longitude: 0.0, latitude: 0.0)))
          .toList();
      return remoteMapRepository.getFriendCoordinateStream(friends);
    }
    return remoteMapRepository.getFriendCoordinateStream([]);
  }

  Stream<CoordinateModel> startSelfCoordinatePoling() {
    _pollingController = StreamController();
    //TODO:
    Timer.periodic(const Duration(seconds: 2), (timer) async {
      isStartSelfTrackPoling = true;
      final coordinates = await userCoordinatesRepository.getCoordinates();
      _pollingController.add(coordinates);
      if (_user != null) {
        try {

         await remoteMapRepository.sendUserCoordinate(MapTagModel(
            photoUrl: _user!.photoUrl, id: _user!.id, coordinate: coordinates));}
            catch(e){
              int i = 0;
            }
      }
    });
    return _pollingController.stream;
  }

  void stopPoling() {
    _pollingController.close();
  }
}
