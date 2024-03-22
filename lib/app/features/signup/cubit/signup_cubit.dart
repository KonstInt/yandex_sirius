import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';

import '../../user/data/remote/firebase/service/firebase_user_service.dart';

part 'signup_state.dart';

part 'signup_cubit.freezed.dart';

@injectable
class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authenticationRepository) : super(const SignupState());

  final FirebaseUserService _authenticationRepository;

  void emailChanged(String value) {
    final email = value;
    emit(
      state.copyWith(
        email: email,
      ),
    );
  }

  void passwordChanged(String value) {
    final password = value;

    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = value;
    var check = state.isValid;
    emit(
      state.copyWith(
        isValid: (confirmedPassword == state.password) ? true : false,
      ),
    );
  }

  Future<void> signUpFormSubmitted() async {}
}
