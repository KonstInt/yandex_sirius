import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/repository/remote_user_repository.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc({required this.remoteRepository}) : super(const _Initial()) {
    on<UserEvent>((event, emit) async {
      await event.map(
        started: (event) async => await start(event, emit),
        login: (event) async => await login(event, emit),
        logout: (event) async => await logout(event, emit),
        updateUser: (event) async => await updateUser(event, emit),
        updateAvatar: (event) async => await updateAvatar(event, emit),
      );
    });
  }
  final RemoteUserRepository remoteRepository;
  FutureOr<void> start(UserEvent event, Emitter<UserState> emit) {
    //TODO:
    throw UnimplementedError();
  }

  FutureOr<void> login(UserEvent event, Emitter<UserState> emit) {
    //TODO:
    throw UnimplementedError();
  }

  FutureOr<void> logout(UserEvent event, Emitter<UserState> emit) {
    //TODO:
    throw UnimplementedError();
  }

  FutureOr<void> updateUser(UserEvent event, Emitter<UserState> emit) {
    //TODO:
    throw UnimplementedError();
  }

  FutureOr<void> updateAvatar(UserEvent event, Emitter<UserState> emit) {
    //TODO:
    throw UnimplementedError();
  }
}
