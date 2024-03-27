import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/map/domain/manager/map_manager.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

import 'package:latlong2/latlong.dart';

// import '../../../../data/firebase/models/map_tag/firebase_api_map_tag_model.dart';

part 'map_event.dart';

part 'map_state.dart';

part 'map_bloc.freezed.dart';

class MapData {
  static int friendId = 0;
  static List<MapTagModel> markers = [];
  static MapController mapController = MapController();
  static double zoom = 10;

  static void updateZoom() {
    // mapController.move(mapController.camera.center, zoom);
    zoom = mapController.camera.zoom;
  }
}

class MapBloc extends Bloc<FriendsMapEvent, MapState> {
  final MapManager manager;

  MapBloc({required this.manager}) : super(const _Initial()) {
    track();
    on<FriendsMapEvent>((event, emit) async {
      await event.map(
        started: (event) async => await start(event, emit),
        startFriendsPoling: (event) async =>
            await startFriendsPoling(event, emit),
        startSelfPoling: (event) async => await startSelfPoling(event, emit),
        goHome: (_GoHome value) {
          MapData.mapController.move(
              LatLng(MapData.markers.last.coordinate.latitude,
                  MapData.markers.last.coordinate.longitude),
              MapData.zoom);
        },
        nextFriend: (_NextFriend value) {
          if (MapData.markers.length <= 1) {
            return;
          }
          MapData.friendId =
              (MapData.friendId + 1) % (MapData.markers.length - 1);
          if (kDebugMode) {
            print(MapData.friendId % MapData.markers.length);
          }
          MapData.mapController.move(
              LatLng(MapData.markers[MapData.friendId].coordinate.latitude,
                  MapData.markers[MapData.friendId].coordinate.longitude),
              MapData.zoom);
        },
        showAllFriends: (_ShowAllFriends value) {},
        changeZoom: (_changeZoom value) {
          MapData.zoom = MapData.mapController.camera.zoom;
          MapData.zoom += value.value;
          MapData.mapController
              .move(MapData.mapController.camera.center, MapData.zoom);
        },
      );
    });
  }

  final allMarkers = StreamController<List<MapTagModel>>();
  List<MapTagModel> tags = [];

  void track() async {
    final stream = await manager.startTrackFriends();
    stream.listen((event) {
      // emit(MapState.updCoordinates(
      //     nowCoordinate: event, prevCoordinate: MapData.markers));
      tags = event;
      tags.add(MapTagModel(
          photoUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMPCelOBrmKgV3rfVHhf9YNzurlsan7OAoBC-208hDcg&s',
          id: '-1',
          coordinate: CoordinateModel(latitude: 0, longitude: 0)));
    });
    final streamMe = await manager.startSelfCoordinatePoling();
    streamMe.listen((event) {
      tags.last = MapTagModel(
          photoUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnNrA8mNiQH4kfhSyjd38JJEf6P0R4MRFJvRTyAF5eBUca-v0ou16Ihre-NUIAdQIABQg&usqp=CAU',
          id: 'myself',
          coordinate: event);
      allMarkers.add(tags);
    });
    allMarkers.stream.listen((event) {
      emit(MapState.updCoordinates(
          nowCoordinate: event, prevCoordinate: MapData.markers));
      MapData.markers = List.of(event);
    });
    // MapData.mapController.mapEventStream.listen((event) {
    //   MapData.zoom = event.camera.zoom;
    //   if (kDebugMode) {
    //     print(event.camera.zoom);
    //   }
    // });
  }

  void dispose() {
    allMarkers.close();
  }

  start(event, Emitter<MapState> emit) {
    MapData.mapController = event.mapController;
  }

  startFriendsPoling(event, Emitter<MapState> emit) {}

  startSelfPoling(event, Emitter<MapState> emit) {}
}
