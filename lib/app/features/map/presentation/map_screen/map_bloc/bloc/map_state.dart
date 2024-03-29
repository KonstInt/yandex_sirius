part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.loading() = _Loading;
  const factory MapState.updCoordinates(
      {required List<MapTagModel> nowCoordinate,
      required List<MapTagModel> prevCoordinate}) = _UpdCoordinates;
}
