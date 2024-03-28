import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';
import 'package:yandex_sirius/app/features/user/domain/models/friend/friend_model.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

import '../../common_use_case/user_use_case.dart';
import '../../user/data/remote/firebase/service/firebase_user_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FirebaseUserService _authenticationRepository;
  final UserUseCase _userUseCase;
  late UserModel _currentUser;
  late Set<String> _friends;
  SearchBloc(this._authenticationRepository, this._userUseCase)
      : super(const SearchState()) {
    _listenUser();
    _friends = _currentUser.friendList.map((e) => e.id).toSet();
    on<CreateUserList>(_onCreateUserList);
    on<AddFriend>(_onAddFriend);
  }

  void _listenUser() {
    _userUseCase.broadcast.stream.listen((event) {
      _currentUser = event;
    });
  }

  void _onAddFriend(AddFriend event, Emitter<SearchState> emit) async {
    final list = _currentUser.friendList;
    if (!_friends.contains(event.id)) {
      list.add(FriendModel(id: event.id, photoUrl: event.photoUrl));
      _friends.add(event.id);

    }
    _currentUser = _currentUser.copyWith(friendList: list);
    Map<String, bool> friendsMap = state.isFriend;
    friendsMap[event.id] = true;
    emit(state.copyWith(isFriend: friendsMap));
  }

  void _onDeleteFriend(DeleteFriend event, Emitter<SearchState> emit) async {
    final list = _currentUser.friendList;
    final mapFriends = state.isFriend;
    if (_friends.contains(event.id)) {
      for (int i = 0; i < list.length; i++) {
        if (list[i].id == event.id) {
          list.removeAt(i);
          _friends.remove(event.id);
          mapFriends[event.id] = false;
          break;
        }
      }
      _friends.remove(event.id);
    }
    _currentUser = _currentUser.copyWith(friendList: list);
    emit(state.copyWith(isFriend: mapFriends));
  }

  Future<void> _onCreateUserList(
      CreateUserList event, Emitter<SearchState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    List<FirebaseApiUserModel> newList = [];
    if (event.prefix != '') {
      List<String> list =
          await _authenticationRepository.getUsersList(event.prefix);
      int end = (list.length >= 10) ? 10 : list.length;
      Map<String, bool> friendsMap = {};
      if (list.isNotEmpty) {
        for (int i = 0; i < end; i++) {
          newList.add(await _authenticationRepository.getUser(list[i]));
          friendsMap[newList[i].id] = (_friends.contains(newList[i].id) ? true : false);
        }
      }
    }
    emit(state.copyWith(
        status: FormzSubmissionStatus.success, peoples: newList));
  }
}
