part of 'search_bloc.dart';

class SearchEvent {}

class CreateUserList extends SearchEvent {
  final String prefix;
  CreateUserList(this.prefix);
}

class AddFriend extends SearchEvent {
  String id;
  String photoUrl;
  AddFriend(this.id, this.photoUrl);
}

class DeleteFriend extends SearchEvent {
  String id;
  DeleteFriend(this.id);
}
