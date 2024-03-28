part of 'sign_in_control_bloc.dart';

@freezed
class SignInControlState with _$SignInControlState {
  const factory SignInControlState.loading() = _Loading;
  const factory SignInControlState.loggedIn() = _LoggedIn;
  const factory SignInControlState.loggedOut() = _LoggedOut;
}
