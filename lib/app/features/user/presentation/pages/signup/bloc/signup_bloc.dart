import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:yandex_sirius/app/features/user/domain/exceptions/eceptions.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/remote_user_repository.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._authenticationRepository)
      : super(const _SignUpStateFirstPage()) {
    on<SignUpEvent>(
      (event, emit) async {
        await event.map(
            emailChanged: (event) async => await _onEmailChanged(event, emit),
            passwordChanged: (event) async =>
                await _onPasswordChanged(event, emit),
            surnameChanged: (event) async =>
                await _onSurnameChanged(event, emit),
            nameChanged: (event) async => await _onNameChanged(event, emit),
            nicknameChanged: (event) async =>
                await _onNicknameChanged(event, emit),
            photoChanged: (event) async => await _onPhotoChanged(event, emit),
            confirmedPasswordChanged: (event) async =>
                await _onConfirmedPasswordChanged(event, emit),
            authenticationSubmitted: (event) async =>
                await _onAuthenticationSubmitted(event, emit),
            signUpFormSubmitted: (event) async =>
                await _onSignUpFormSubmitted(event, emit));
      },
    );
  
  }
  final RemoteUserRepository _authenticationRepository;
  FutureOr<void> _onEmailChanged(
      _EmailChanged event, Emitter<SignUpState> emit) {
    final email = event.email;
    emit(
      state.copyWith(
        email: email,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onSurnameChanged(
      _SurnameChanged event, Emitter<SignUpState> emit) {
    final bool checker =
        state.alias != '' && state.name != '' && state.surname != '';
    emit(
      state.copyWith(
        isValid: checker,
        surname: event.surname,
      ),
    );
  }

  FutureOr<void> _onNameChanged(_NameChanged event, Emitter<SignUpState> emit) {
    final bool checker =
        state.alias != '' && state.name != '' && state.surname != '';
    emit(
      state.copyWith(
        isValid: checker,
        name: event.name,
      ),
    );
  }

  FutureOr<void> _onNicknameChanged(
      _NicknameChanged event, Emitter<SignUpState> emit) {
    final bool checker =
        state.alias != '' && state.name != '' && state.surname != '';
    emit(
      state.copyWith(
        isValid: checker,
        alias: event.nickname,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onPasswordChanged(
      _PasswordChanged event, Emitter<SignUpState> emit) {
    final password = event.password;
    emit(
      state.copyWith(
        password: password,
        errorMessage: null,
      ),
    );
  }

  Future<void> _onPhotoChanged(
      _PhotoChanged event, Emitter<SignUpState> emit) async {
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

  FutureOr<void> _onConfirmedPasswordChanged(
      _ConfirmedPasswordChanged event, Emitter<SignUpState> emit) {
    final confirmedPassword = event.confirmedPassword;
    emit(
      state.copyWith(
        isValid: (confirmedPassword == state.password) ? true : false,
      ),
    );
  }

  Future<void> _onAuthenticationSubmitted(
      _AuthenticationSubmitted event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      final String? id = await _authenticationRepository.signIn(
          state.email, state.password);
      emit(_SignUpStateSecondPage(id: id));
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

  Future<void> _onSignUpFormSubmitted(
      _SignUpFormSubmitted event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      final user = UserModel(
          id: state.id!,
          name: state.name,
          secondName: state.surname,
          nickname: state.alias,
          photoUrl: state.photo,
          friendList: [],
          isOnline: true,
          isGeoTrackingOn: true);
      await _authenticationRepository.addUserToDB(user, state.email, state.password);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on NicknameAlreadyExistsException catch (e) {
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
