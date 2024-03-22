part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String alias,
    @Default('') String name,
    @Default('') String secondName,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _SignupState;
}
