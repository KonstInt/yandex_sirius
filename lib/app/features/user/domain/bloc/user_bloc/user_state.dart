part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.data(UserModel user) = _User;
  const factory UserState.unregistered() = _Unregistered;
  const factory UserState.error() = _Error;
}
