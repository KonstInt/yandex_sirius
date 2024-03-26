part of 'login_bloc.dart';

class LoginEvent {}

class EmailChanged extends LoginEvent {
  EmailChanged(this.newEmail);
  final String newEmail;
}

class PasswordChanged extends LoginEvent {
  PasswordChanged(this.newPassword);
  final String newPassword;
}

class LogInWithCredentials extends LoginEvent {}
