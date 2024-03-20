part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = _Started;
  const factory UserEvent.login() = _Login;
  const factory UserEvent.logout() = _Logout;
  const factory UserEvent.updateUser({required UserModel user}) = _UpdateUser;
  const factory UserEvent.updateAvatar({required String imagePath}) = _UpdateAvatar;
}