import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';

import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';
part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._authenticationRepository, this._userUseCase)
      : super(const ProfileState()) {
    _listenUser();
    on<LogOut>(_onLogOut);
  }
  final FirebaseUserService _authenticationRepository;
  final UserUseCase _userUseCase;
  late UserModel _currentUser;
  void _listenUser() {
    _userUseCase.broadcast.listen((event) {
      _currentUser = event;
    });
  }

  void _onLogOut(LogOut event, Emitter<ProfileState> emit) {

  }
}
