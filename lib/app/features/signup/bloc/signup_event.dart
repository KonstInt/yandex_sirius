part of 'signup_bloc.dart';

class SignupEvent {}

class EmailChanged extends SignupEvent {
  final String newEmail;
  EmailChanged(this.newEmail);
}

class PasswordChanged extends SignupEvent {
  final String newPassword;
  PasswordChanged(this.newPassword);
}

class SurnameChanged extends SignupEvent {
  final String newSurname;
  SurnameChanged(this.newSurname);
}

class NameChanged extends SignupEvent {
  final String newName;
  NameChanged(this.newName);
}

class NicknameChanged extends SignupEvent {
  final String nickname;
  NicknameChanged(this.nickname);
}

class PhotoChanged extends SignupEvent {}

class ConfirmedPasswordChanged extends SignupEvent {
  final String confirmedPassword;
  ConfirmedPasswordChanged(this.confirmedPassword);
}

class AuthenticationSubmitted extends SignupEvent {}

class SignUpFormSubmitted extends SignupEvent {}
