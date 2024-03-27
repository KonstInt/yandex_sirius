part of 'signup_bloc.dart';

@freezed
abstract class SignUpEvent with _$SignUpEvent {
  factory SignUpEvent.emailChanged({required String email}) = _EmailChanged;
  factory SignUpEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  factory SignUpEvent.surnameChanged({required String surname}) =
      _SurnameChanged;
  factory SignUpEvent.nameChanged({required String name}) = _NameChanged;
  factory SignUpEvent.nicknameChanged({required String nickname}) =
      _NicknameChanged;
  factory SignUpEvent.photoChanged() = _PhotoChanged;
  factory SignUpEvent.confirmedPasswordChanged(
      {required String confirmedPassword}) = _ConfirmedPasswordChanged;
  factory SignUpEvent.authenticationSubmitted() = _AuthenticationSubmitted;
  factory SignUpEvent.signUpFormSubmitted() = _SignUpFormSubmitted;
}
