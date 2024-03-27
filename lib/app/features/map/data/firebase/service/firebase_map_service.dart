import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/models/coordinate/firebase_api_coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/models/map_tag/firebase_api_map_tag_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';


class FirebaseMapService {
  late final StreamController<FirebaseApiMapTagModel> friendsStream;

  //TODO: firebase variable
  bool friendsStreamIsInitialized = false;
 
  Future<Stream<List<FirebaseApiMapTagModel>>> getFriendCoordinateStream(
      List<FirebaseApiMapTagModel> friendsList) async {
    //TODO: create stream and return it with
    if (!friendsStreamIsInitialized) {
      friendsStream = StreamController();
      friendsStreamIsInitialized = true;

      //TODO: firebase stream creation
    } else {
      //TODO: firebase stream get different data
    }

    var friendCoordinates = [
      FirebaseApiMapTagModel(
          photoUrl:
              'https://img.buzzfeed.com/buzzfeed-static/static/2023-11/14/17/campaign_images/3a682d348ec5/dd-osama-on-drill-being-washed-and-pop-smoke-bein-3-515-1699983197-6_dblbig.jpg',
          id: 'sdse',
          coordinate: CoordinateModel(latitude: 50.00003, longitude: 0.00002)),
      FirebaseApiMapTagModel(
          photoUrl:
              'https://img.buzzfeed.com/buzzfeed-static/static/2023-11/14/17/campaign_images/3a682d348ec5/dd-osama-on-drill-being-washed-and-pop-smoke-bein-3-515-1699983197-6_dblbig.jpg',
          id: 'sds',
          coordinate: CoordinateModel(latitude: 50.00003, longitude: 0.00002))
    ];
    var streamFriends = Stream<List<FirebaseApiMapTagModel>>.periodic(
        const Duration(seconds: 3), (ff) {
      for (int i = 0; i < friendCoordinates.length; i++) {
        friendCoordinates[i] = FirebaseApiMapTagModel(
            photoUrl: friendCoordinates[i].photoUrl,
            id: friendCoordinates[i].id,
            coordinate: CoordinateModel(
                longitude: friendCoordinates[i].coordinate.longitude +
                    (Random().nextDouble() - 0.5) / 30,
                latitude: friendCoordinates[i].coordinate.latitude +
                    (Random().nextDouble() - 0.5) / 30));
      }
      return friendCoordinates;
    });

    return streamFriends;
  }

  Future<FirebaseApiCoordinateModel> setUserCoordinateStream(
      FirebaseApiCoordinateModel coordinate) {
    //TODO: create stream and return it with
    // FirebaseApiCoordinateModel me =
    //     FirebaseApiCoordinateModel(latitude: 50.00003, longitude: 0.00002);
    // var streamMe = Stream<FirebaseApiCoordinateModel>.periodic(
    //     const Duration(seconds: 3), (ff) {
    //   me = FirebaseApiCoordinateModel(
    //       latitude: me.latitude + (Random().nextDouble() - 0.5) / 30,
    //       longitude:
    //           me.longitude + (Random().nextDouble() - 0.5) / 30);
    //   return me;
    // });
    // return streamMe;
    throw UnimplementedError();
  }

  void closeFriendsStream() {
    friendsStream.close();
  }
}
