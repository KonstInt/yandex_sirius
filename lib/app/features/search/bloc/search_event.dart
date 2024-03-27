part of 'search_bloc.dart';

class SearchEvent {}

class CreateUserList extends SearchEvent {
  final String prefix;
  CreateUserList(this.prefix);
}

class AddFriend extends SearchEvent{
  String id;
  AddFriend(this.id);
}
