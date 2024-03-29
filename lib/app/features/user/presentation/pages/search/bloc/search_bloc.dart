import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yandex_sirius/app/features/common_use_case/user_use_case.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/service/firebase_user_service.dart';
import 'package:yandex_sirius/app/features/user/domain/models/friend/friend_model.dart';
import 'package:yandex_sirius/app/features/user/domain/models/user/user_model.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

UserModel? currentUser;
Set<String>? friends;

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._authenticationRepository, this._userUseCase)
      : super(const SearchState()) {
    _listenUser();
    if (currentUser != null) _currentUser = currentUser!;
    if (friends != null) _friends = friends!;
    on<CreateUserList>(_onCreateUserList);
    on<AddFriend>(_onAddFriend);
    on<DeleteFriend>(_onDeleteFriend);
  }

  final FirebaseUserService _authenticationRepository;
  final UserUseCase _userUseCase;
  late UserModel _currentUser;
  late Set<String> _friends;

  void _listenUser() {
    _userUseCase.broadcast.listen((event) {
      _currentUser = event;
      _friends = _currentUser.friendList.map((e) => e.id).toSet();
      currentUser = event;
      friends = _friends;
    });
  }

  Future<void> _onAddFriend(AddFriend event, Emitter<SearchState> emit) async {
    final list = _currentUser.friendList;
    if (!_friends.contains(event.id)) {
      list.add(FriendModel(id: event.id, photoUrl: event.photoUrl));
      _friends.add(event.id);
    }
    _currentUser = _currentUser.copyWith(friendList: list);
    final Map<String, bool> friendsMap = state.isFriend;
    friendsMap[event.id] = true;
    final FirebaseApiUserModel model =
        FirebaseApiUserModel.fromJson(_currentUser.toJson());
    await _authenticationRepository.updateUser(model);
    emit(state.copyWith(isFriend: friendsMap));
  }

  Future<void> _onDeleteFriend(
      DeleteFriend event, Emitter<SearchState> emit) async {
    final list = _currentUser.friendList;
    final mapFriends = state.isFriend;
    if (_friends.contains(event.id)) {
      list.removeWhere((friend) => friend.id == event.id);
      _friends.remove(event.id);
    }
    _currentUser = _currentUser.copyWith(friendList: list);
    mapFriends[event.id] = false;
    emit(state.copyWith(isFriend: mapFriends));
  }

  Future<void> _onCreateUserList(
      CreateUserList event, Emitter<SearchState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    final List<FirebaseApiUserModel> newList = [];
    if (event.prefix != '') {
      final List<String> list =
          await _authenticationRepository.getUsersList(event.prefix);
      final int end = (list.length >= 10) ? 10 : list.length;
      final Map<String, bool> friendsMap = {};
      if (list.isNotEmpty) {
        friends ??= {};
        for (int i = 0; i < end; i++) {
          newList.add(await _authenticationRepository.getUser(list[i]));
          friendsMap[newList[i].id] = friends!.contains(newList[i].id);
        }
      }
    }
    emit(state.copyWith(
        status: FormzSubmissionStatus.success, peoples: newList));
  }
}
