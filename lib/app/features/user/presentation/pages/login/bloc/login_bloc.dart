import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/user/domain/exceptions/eceptions.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/remote_user_repository.dart';

part 'login_bloc.freezed.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authenticationRepository) : super(const LoginState()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
          emailChanged: (event) async => await _onEmailChanged(event, emit),
          passwordChanged: (event) async =>
              await _onPasswordChanged(event, emit),
          logInWithCredentials: (event) async =>
              await _onLogInWithCredentials(event, emit));
    });
  }

  String _email = '';
  String _password = '';

  final RemoteUserRepository _authenticationRepository;

  FutureOr<void> _onEmailChanged(
      _EmailChanged event, Emitter<LoginState> emit) {
    _email = event.newEmail;
    emit(
      state.copyWith(
        email: _email,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onPasswordChanged(
      _PasswordChanged event, Emitter<LoginState> emit) {
    _password = event.newPassword;
    emit(
      state.copyWith(
        isValid: state.email != '',
        password: _password,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onLogInWithCredentials(
      _LogInWithCredentials event, Emitter<LoginState> emit) async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      await _authenticationRepository.signIn(state.email, state.password);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on LogInWithEmailAndPasswordFailure catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.message,
          status: FormzSubmissionStatus.failure,
        ),
      );
    } on Exception {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
