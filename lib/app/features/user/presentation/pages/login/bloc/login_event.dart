part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  factory LoginEvent.emailChanged({required String newEmail}) = _EmailChanged;
  factory LoginEvent.passwordChanged({required String newPassword}) =
      _PasswordChanged;
  factory LoginEvent.logInWithCredentials() = _LogInWithCredentials;
}
