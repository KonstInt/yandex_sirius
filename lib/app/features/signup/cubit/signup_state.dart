part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    @Default('') String name,
    @Default('') String surname,
    @Default('') String photo,
    @Default('') String email,
    @Default('') String password,
    @Default('') String alias,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _SignupState;
}
