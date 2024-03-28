part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.started() = _Started;
  const factory MapEvent.startFriendsPoling() = _StartFriendsPoling;
  const factory MapEvent.startSelfPoling() = _StartSelfPoling;
}
