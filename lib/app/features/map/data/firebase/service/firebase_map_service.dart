import 'dart:async';
import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/models/coordinate/firebase_api_coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/data/firebase/models/map_tag/firebase_api_map_tag_model.dart';

class FirebaseMapService {
  late final StreamController<List<FirebaseApiMapTagModel>> friendsStream;
  late final StreamSubscription<List<FirebaseApiMapTagModel>> apiStream;

  //TODO: firebase variable
  bool friendsStreamIsInitialized = false;

  Future<Stream<List<FirebaseApiMapTagModel>>> getFriendCoordinateStream(
      List<FirebaseApiMapTagModel> friendsList) async {
    final friendCoordinates = [
      FirebaseApiMapTagModel(
          photoUrl:
              'https://img.buzzfeed.com/buzzfeed-static/static/2023-11/14/17/campaign_images/3a682d348ec5/dd-osama-on-drill-being-washed-and-pop-smoke-bein-3-515-1699983197-6_dblbig.jpg',
          id: 'sdse',
          coordinate: FirebaseApiCoordinateModel(
              latitude: 50.00003, longitude: 0.00002)),
      FirebaseApiMapTagModel(
          photoUrl:
              'https://img.buzzfeed.com/buzzfeed-static/static/2023-11/14/17/campaign_images/3a682d348ec5/dd-osama-on-drill-being-washed-and-pop-smoke-bein-3-515-1699983197-6_dblbig.jpg',
          id: 'sds',
          coordinate: FirebaseApiCoordinateModel(
              latitude: 47.203672, longitude: 39.635135))
    ];
    //TODO: create stream and return it with
    if (!friendsStreamIsInitialized) {
      friendsStream = StreamController();
      friendsStreamIsInitialized = true;
      //TODO: check it
      //FirebaseDatabase.instance.ref().onValue.where((event) => friendsList.indexWhere((element) => element.id == FirebaseApiMapTagModel.fromJson(event.snapshot.value as Map<String,dynamic>).id )>-1);
      apiStream = Stream<List<FirebaseApiMapTagModel>>.periodic(
          const Duration(seconds: 1), (_) {
        for (int i = 0; i < friendCoordinates.length; i++) {
          friendCoordinates[i] = FirebaseApiMapTagModel(
              photoUrl: friendCoordinates[i].photoUrl,
              id: friendCoordinates[i].id,
              coordinate: FirebaseApiCoordinateModel(
                  longitude: friendCoordinates[i].coordinate.longitude +
                      (Random().nextDouble() - 0.5) / 500,
                  latitude: friendCoordinates[i].coordinate.latitude +
                      (Random().nextDouble() - 0.5) / 540));
        }
        friendsStream.add(friendCoordinates);
        return friendCoordinates;
      }).listen((event) {
        friendsStream.add(event);
      });
      //TODO: firebase stream creation
    } else {
      await apiStream.cancel();
      apiStream = Stream<List<FirebaseApiMapTagModel>>.periodic(
          const Duration(seconds: 1), (_) {
        for (int i = 0; i < friendCoordinates.length; i++) {
          friendCoordinates[i] = FirebaseApiMapTagModel(
              photoUrl: friendCoordinates[i].photoUrl,
              id: friendCoordinates[i].id,
              coordinate: FirebaseApiCoordinateModel(
                  longitude: friendCoordinates[i].coordinate.longitude +
                      (Random().nextDouble() - 0.5) / 500,
                  latitude: friendCoordinates[i].coordinate.latitude +
                      (Random().nextDouble() - 0.5) / 540));
        }
        friendsStream.add(friendCoordinates);
        return friendCoordinates;
      }).listen((event) {
        friendsStream.add(event);
      });
    }

    return friendsStream.stream;
  }

  Future<FirebaseApiMapTagModel> setUserMapTag(
      FirebaseApiMapTagModel mapTag) async {
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
    try {
      final DatabaseReference databaseReference =
          FirebaseDatabase.instance.ref('coordinates/${mapTag.id}');
      final json = mapTag.toJson();
      final snap = await databaseReference.get();
      if (snap.exists) {
        await databaseReference.update(json);
      } else {
        await databaseReference.set(json);
      }
    } catch (e) {
      rethrow;
    }
    return mapTag;
    //throw UnimplementedError();
  }

  void closeFriendsStream() {
    friendsStream.close();
  }
}
