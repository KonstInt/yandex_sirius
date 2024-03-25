part of 'login_bloc.dart';

class LoginEvent {}

class EmailChanged extends LoginEvent {
  final String newEmail;
  EmailChanged(this.newEmail);
}

class PasswordChanged extends LoginEvent {
  final String newPassword;
  PasswordChanged(this.newPassword);
}

class LogInWithCredentials extends LoginEvent {}
