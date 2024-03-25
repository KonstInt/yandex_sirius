import 'dart:async';

import 'package:yandex_sirius/app/features/map/data/firebase/models/coordinate/firebase_api_coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/models/map_tag/firebase_api_map_tag_model.dart';

class FirebaseMapService {
  late final StreamController<FirebaseApiMapTagModel> friendsStream;
  //TODO: firebase variable
  bool friendsStreamIsInitialized = false;
  Future<Stream<FirebaseApiMapTagModel>> getFriendCoordinateStream(
      List<FirebaseApiMapTagModel> friendsList) async {
    //TODO: create stream and return it with
    if (!friendsStreamIsInitialized) {
      friendsStream = StreamController();
      friendsStreamIsInitialized = true;

      //TODO: firebase stream creation
    } else {
      //TODO: firebase stream get different data
    }
    //TODO: return friendsStream.stream;
    throw UnimplementedError();
  }

  Future<FirebaseApiCoordinateModel> setUserCoordinateStream(
      FirebaseApiCoordinateModel coordinate) {
    //TODO: create stream and return it with
    throw UnimplementedError();
  }

  void closeFriendsStream() {
    friendsStream.close();
  }
}
