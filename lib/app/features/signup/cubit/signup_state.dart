part of 'signup_cubit.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.firstPage({
    String? id,
    @Default('') String email,
    @Default('') String password,
    @Default('') String name,
    @Default('') String surname,
    @Default('') String photo,
    @Default('') String alias,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _SignupStateFirstPage;

  const factory SignupState.secondPage({
    String? id,
    @Default('') String email,
    @Default('') String password,
    @Default('') String name,
    @Default('') String surname,
    @Default('') String photo,
    @Default('') String alias,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _SignupStateSecondPage;
}
