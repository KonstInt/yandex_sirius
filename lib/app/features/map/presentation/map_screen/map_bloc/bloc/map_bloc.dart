import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:yandex_sirius/app/features/map/domain/manager/map_manager.dart';
import 'package:yandex_sirius/app/features/map/domain/models/coordinate/coordinate_model.dart';
import 'package:yandex_sirius/app/features/map/domain/models/map_tag/map_tag_model.dart';

part 'map_bloc.freezed.dart';
// import '../../../../data/firebase/models/map_tag/firebase_api_map_tag_model.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapData {
  int friendId = 0;
  List<MapTagModel> markers = [];
  MapController mapController = MapController();
  double zoom = 10;

  void updateZoom() {
    zoom = mapController.camera.zoom;
  }
}

class MapBloc extends Bloc<FriendsMapEvent, MapState> {
  MapBloc({required this.manager}) : super(const _Initial()) {
    track();
    on<FriendsMapEvent>((event, emit) async {
      await event.map(
        started: (event) async => await start(event, emit),
        goHome: (value) {
          _mapData.mapController.move(
              LatLng(_mapData.markers.last.coordinate.latitude,
                  _mapData.markers.last.coordinate.longitude),
              17);
        },
        nextFriend: (value) {
          if (_mapData.markers.length <= 1) {
            return;
          }
          _mapData.friendId =
              (_mapData.friendId + 1) % (_mapData.markers.length - 1);
          if (kDebugMode) {
            print(_mapData.friendId % _mapData.markers.length);
          }
          _mapData.mapController.move(
              LatLng(_mapData.markers[_mapData.friendId].coordinate.latitude,
                  _mapData.markers[_mapData.friendId].coordinate.longitude),
             17);
        },
        showAllFriends: (value) {},
        changeZoom: (value) {
          _mapData.zoom = _mapData.mapController.camera.zoom;
          _mapData.zoom += value.value;
          _mapData.mapController
              .move(_mapData.mapController.camera.center, _mapData.zoom);
          emit(MapState.updCoordinates(
              nowCoordinate: _mapData.markers,
              prevCoordinate: _mapData.markers));
        },
      );
    });
  }
  final MapManager manager;
  final MapData _mapData = MapData();
  final allMarkers = StreamController<List<MapTagModel>>();
  bool _firstEnter = false;
  List<MapTagModel> tags = [];

  void dispose() {
    allMarkers.close();
  }

  FutureOr<void> start(event, Emitter<MapState> emit) async {
    _mapData.mapController = event.mapController;
    emit(const MapState.loading());
    _firstEnter = true;
   // while (_mapData.markers.isEmpty) {}

    // _mapData.mapController.move(
    //     LatLng(_mapData.markers.last.coordinate.latitude,
    //         _mapData.markers.last.coordinate.longitude),
    //     _mapData.zoom);
  }

  Future<void> track() async {
    (await manager.startTrackFriends()).listen((event) {
      tags = event;
      tags.add(MapTagModel(
          photoUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMPCelOBrmKgV3rfVHhf9YNzurlsan7OAoBC-208hDcg&s',
          id: '-1',
          coordinate: CoordinateModel(latitude: 0, longitude: 0)));
    });
    manager.startSelfCoordinatePoling().listen((event) {
      tags.last = MapTagModel(
          photoUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnNrA8mNiQH4kfhSyjd38JJEf6P0R4MRFJvRTyAF5eBUca-v0ou16Ihre-NUIAdQIABQg&usqp=CAU',
          id: 'myself',
          coordinate: event);
      allMarkers.add(tags);
    });
    allMarkers.stream.listen((event) {
      emit(MapState.updCoordinates(
          nowCoordinate: event, prevCoordinate: _mapData.markers));
      _mapData.markers = List.of(event);
      if(_firstEnter){

        _mapData.mapController.move(
              LatLng(_mapData.markers.last.coordinate.latitude,
                  _mapData.markers.last.coordinate.longitude),
              17);
        _firstEnter = false;
      }
    });
  }
}
