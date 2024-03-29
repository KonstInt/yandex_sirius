import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/remote_user_repository.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._authenticationRepository, this._userUseCase)
      : super(const ProfileState()) {
    _listenUser();
    on<LogOut>(_onLogOut);
  }
  final RemoteUserRepository _authenticationRepository;
  final UserUseCase _userUseCase;
  late UserModel _currentUser;
  void _listenUser() {
    _userUseCase.broadcast.listen((event) {
      _currentUser = event;
      emit(state.copyWith(
        email: _currentUser.email,
        name: _currentUser.name,
        secondName: event.secondName,
        nickName: event.nickname,
        photo: event.photoUrl,
      ));
    });
  }

  void _onLogOut(LogOut event, Emitter<ProfileState> emit) {
    //TODO: avid this!!!
    FirebaseAuth.instance.signOut();
  }
}
