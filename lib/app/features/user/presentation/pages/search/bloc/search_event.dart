part of 'search_bloc.dart';

class SearchEvent {}

class CreateUserList extends SearchEvent {
  CreateUserList(this.prefix);
  final String prefix;
}

class AddFriend extends SearchEvent {
  AddFriend(this.id, this.photoUrl);
  String id;
  String photoUrl;
}

class DeleteFriend extends SearchEvent {
  DeleteFriend(this.id);
  String id;
}
