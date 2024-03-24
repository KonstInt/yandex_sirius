import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';

import '../../user/data/remote/firebase/service/firebase_user_service.dart';
import '../../user/domain/exceptions/eceptions.dart';

part 'signup_state.dart';

part 'signup_cubit.freezed.dart';

@injectable
class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this._authenticationRepository)
      : super(const SignupState.firstPage());

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

  void nicknameChanged(String value) {
    emit(
      state.copyWith(
        alias: value,
      ),
    );
  }

  void passwordChanged(String value) {
    final password = value;
    emit(
      state.copyWith(
        password: password,
        errorMessage: null,
      ),
    );
  }

  void photoChanged() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      final encodedImage = base64Encode(bytes);
      emit(
        state.copyWith(
          photo: encodedImage,
        ),
      );
    }
  }

  void confirmedPasswordChanged(String value) {
    final confirmedPassword = value;
    emit(
      state.copyWith(
        isValid: (confirmedPassword == state.password) ? true : false,
      ),
    );
  }

  Future<void> authenticationSubmitted() async {
    try {
      String? id = await _authenticationRepository.authentication(
          state.email, state.password);
      emit(_SignupStateSecondPage(id: id));
    } on SignUpWithEmailAndPasswordFailure catch (e) {
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

  Future<void> signUpFormSubmitted() async {
    try {
      var user = FirebaseApiUserModel(
          id: '',
          name: '',
          secondName: '',
          nickname: state.alias,
          photoUrl: state.photo,
          friendList: [],
          isOnline: true,
          isGeoTrackingOn: true);
      await _authenticationRepository.signUp(user, state.email, state.password);
    } on SignUpWithEmailAndPasswordFailure catch (e) {
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
