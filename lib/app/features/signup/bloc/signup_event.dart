part of 'signup_bloc.dart';

class SignupEvent {}

class EmailChanged extends SignupEvent {
  EmailChanged(this.newEmail);
  final String newEmail;
}

class PasswordChanged extends SignupEvent {
  PasswordChanged(this.newPassword);
  final String newPassword;
}

class SurnameChanged extends SignupEvent {
  SurnameChanged(this.newSurname);
  final String newSurname;
}

class NameChanged extends SignupEvent {
  NameChanged(this.newName);
  final String newName;
}

class NicknameChanged extends SignupEvent {
  NicknameChanged(this.nickname);
  final String nickname;
}

class PhotoChanged extends SignupEvent {}

class ConfirmedPasswordChanged extends SignupEvent {
  ConfirmedPasswordChanged(this.confirmedPassword);
  final String confirmedPassword;
}

class AuthenticationSubmitted extends SignupEvent {}

class SignUpFormSubmitted extends SignupEvent {}
