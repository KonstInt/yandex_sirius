import 'dart:async';
import 'dart:convert';
import 'dart:io';

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
            photoChanged: (event) async => _onPhotoChanged(event, emit),
            confirmedPasswordChanged: (event) async =>
                await _onConfirmedPasswordChanged(event, emit),
            authenticationSubmitted: (event) async =>
                _onAuthenticationSubmitted(event, emit),
            signUpFormSubmitted: (event) async =>
                _onSignUpFormSubmitted(event, emit));
      },
    );
  }

  String _email = '';
  String _password = '';
  String _confirmedPassword = '';
  String _nickName = '';
  File? _photoUrl;
  String _name = '';
  String _surname = '';

  final RemoteUserRepository _authenticationRepository;
  FutureOr<void> _onEmailChanged(
      _EmailChanged event, Emitter<SignUpState> emit) {
    _email = event.email;
    emit(
      state.copyWith(
        email: _email,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onSurnameChanged(
      _SurnameChanged event, Emitter<SignUpState> emit) {
    final bool checker =
        state.alias != '' && state.name != '' && state.surname != '';
    _surname = event.surname;
    emit(
      state.copyWith(
        isValid: checker,
        surname: _surname,
      ),
    );
  }

  FutureOr<void> _onNameChanged(_NameChanged event, Emitter<SignUpState> emit) {
    final bool checker =
        state.alias != '' && state.name != '' && state.surname != '';
    _name = event.name;
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
    _nickName = event.nickname;
    emit(
      state.copyWith(
        isValid: checker,
        alias: _nickName,
        errorMessage: null,
      ),
    );
  }

  FutureOr<void> _onPasswordChanged(
      _PasswordChanged event, Emitter<SignUpState> emit) {
    _password = event.password;
    emit(
      state.copyWith(
        password: _password,
        errorMessage: null,
      ),
    );
  }

  Future<void> _onPhotoChanged(
      _PhotoChanged event, Emitter<SignUpState> emit) async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );
    //TODO:!!!
    if (pickedFile != null) {
      final bytes = await pickedFile.readAsBytes();
      _photoUrl = File(pickedFile.path);
      emit(
        state.copyWith(
          photo: base64Encode(bytes),
        ),
      );
    }
  }

  FutureOr<void> _onConfirmedPasswordChanged(
      _ConfirmedPasswordChanged event, Emitter<SignUpState> emit) {
    _confirmedPassword = event.confirmedPassword;
    emit(
      state.copyWith(
        isValid: _confirmedPassword == state.password,
      ),
    );
  }

  Future<void> _onAuthenticationSubmitted(
      _AuthenticationSubmitted event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      final bool hasUser = await _authenticationRepository.hasUser(_email);
      if (!hasUser) {
        emit(const _SignUpStateSecondPage());
      } else {
        throw SignUpWithEmailAndPasswordFailure.fromCode(
            'email-already-in-use');
      }
    } on SignUpWithEmailAndPasswordFailure catch (e) {
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

  Future<void> _onSignUpFormSubmitted(
      _SignUpFormSubmitted event, Emitter<SignUpState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      var user = UserModel(
          id: '0',
          name: _name,
          secondName: _surname,
          email: _email,
          nickname: _nickName,
          photoUrl: null,
          friendList: [],
          isOnline: true,
          isGeoTrackingOn: true);
      user = await _authenticationRepository.signUp(user, _email, _password);
      if (_photoUrl != null) {
        await _authenticationRepository.updateAvatar(user.id, _photoUrl!);
      }
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
