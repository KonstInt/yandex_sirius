part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState.initial() = _Initial;
  const factory MapState.updCoordinates(
      {required List<CoordinateModel> coordinate}) = _UpdCoordinates;
}
