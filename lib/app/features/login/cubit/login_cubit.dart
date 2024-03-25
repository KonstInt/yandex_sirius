import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../user/data/remote/firebase/service/firebase_user_service.dart';
import '../../user/domain/exceptions/eceptions.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authenticationRepository) : super(const LoginState());

  final FirebaseUserService _authenticationRepository;

  void emailChanged(String value) {
    final email = value;
    emit(
      state.copyWith(
        email: email,
        errorMessage: null,
      ),
    );
  }

  void passwordChanged(String value) {
    final password = value;
    emit(
      state.copyWith(
        isValid: (state.email != '') ? true : false,
        password: password,
        errorMessage: null,
      ),
    );
  }

  Future<void> logInWithCredentials() async {
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
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
