part of 'signup_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.firstPage({
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
  }) = _SignUpStateFirstPage;

  const factory SignUpState.secondPage({
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
  }) = _SignUpStateSecondPage;
}
