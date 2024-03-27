import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../user/data/remote/firebase/models/user/firebase_api_user_model.dart';
import '../../user/data/remote/firebase/service/firebase_user_service.dart';
import '../../user/domain/exceptions/eceptions.dart';

part 'signup_bloc.freezed.dart';
part 'signup_event.dart';
part 'signup_state.dart';

@injectable
class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final FirebaseUserService _authenticationRepository;

  SignupBloc(this._authenticationRepository) : super(_SignupStateFirstPage()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SurnameChanged>(_onSurnameChanged);
    on<NameChanged>(_onNameChanged);
    on<NicknameChanged>(_onNicknameChanged);
    on<PhotoChanged>(_onPhotoChanged);
    on<ConfirmedPasswordChanged>(_onConfirmedPasswordChanged);
    on<AuthenticationSubmitted>(_onAuthenticationSubmitted);
    on<SignUpFormSubmitted>(_onSignUpFormSubmitted);
  }
  void _onEmailChanged(EmailChanged event, Emitter<SignupState> emit) {
    final email = event.newEmail;
    emit(
      state.copyWith(
        email: email,
        errorMessage: null,
      ),
    );
  }

  void _onSurnameChanged(SurnameChanged event, Emitter<SignupState> emit) {
    bool checker =
        (state.alias != '' && state.name != '' && state.surname != '');
    emit(
      state.copyWith(
        isValid: checker,
        surname: event.newSurname,
      ),
    );
  }

  void _onNameChanged(NameChanged event, Emitter<SignupState> emit) {
    bool checker =
        (state.alias != '' && state.name != '' && state.surname != '');
    emit(
      state.copyWith(
        isValid: checker,
        name: event.newName,
      ),
    );
  }

  void _onNicknameChanged(NicknameChanged event, Emitter<SignupState> emit) {
    bool checker =
        (state.alias != '' && state.name != '' && state.surname != '');
    emit(
      state.copyWith(
        isValid: checker,
        alias: event.nickname,
        errorMessage: null,
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignupState> emit) {
    final password = event.newPassword;
    emit(
      state.copyWith(
        password: password,
        errorMessage: null,
      ),
    );
  }

  void _onPhotoChanged(PhotoChanged event, Emitter<SignupState> emit) async {
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

  void _onConfirmedPasswordChanged(
      ConfirmedPasswordChanged event, Emitter<SignupState> emit) {
    final confirmedPassword = event.confirmedPassword;
    emit(
      state.copyWith(
        isValid: (confirmedPassword == state.password) ? true : false,
      ),
    );
  }

  Future<void> _onAuthenticationSubmitted(
      AuthenticationSubmitted event, Emitter<SignupState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
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

  Future<void> _onSignUpFormSubmitted(
      SignUpFormSubmitted event, Emitter<SignupState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      var user = FirebaseApiUserModel(
          id: state.id!,
          name: state.name,
          secondName: state.surname,
          nickname: state.alias,
          photoUrl: state.photo,
          friendList: [],
          isOnline: true,
          isGeoTrackingOn: true);
      await _authenticationRepository.signUp(user, state.email, state.password);
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } on NicknameAlreadyExistsException catch (e) {
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
