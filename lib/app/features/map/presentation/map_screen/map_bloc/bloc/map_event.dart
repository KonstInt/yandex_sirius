part of 'map_bloc.dart';

@freezed
class FriendsMapEvent with _$FriendsMapEvent {
  const factory FriendsMapEvent.started(MapController mapController) = _Started;
  const factory FriendsMapEvent.startFriendsPoling() = _StartFriendsPoling;
  const factory FriendsMapEvent.startSelfPoling() = _StartSelfPoling;
  const factory FriendsMapEvent.goHome() = _GoHome;
  const factory FriendsMapEvent.nextFriend() = _NextFriend;
  const factory FriendsMapEvent.showAllFriends() = _ShowAllFriends;
  const factory FriendsMapEvent.changeZoom(double value) = _changeZoom;
}
