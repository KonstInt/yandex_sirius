part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
      {@Default('') String email,
      @Default('') String password,
      @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
      @Default(false) bool isValid,
      String? errorMessage}) = _LoginState;
}
