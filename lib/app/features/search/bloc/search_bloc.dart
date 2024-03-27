import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:yandex_sirius/app/features/user/data/remote/firebase/models/user/firebase_api_user_model.dart';

import '../../user/data/remote/firebase/service/firebase_user_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FirebaseUserService _authenticationRepository;

  SearchBloc(this._authenticationRepository) : super(const SearchState()) {
    on<CreateUserList>(_onCreateUserList);
  }

  Future<void> _onCreateUserList(
      CreateUserList event, Emitter<SearchState> emit) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    List<FirebaseApiUserModel> newList = [];
    if (event.prefix != '') {
      List<String> list =
          await _authenticationRepository.getUsersList(event.prefix);
      int end = (list.length >= 10) ? 10 : list.length;
      if (list.isNotEmpty) {
        for (int i = 0; i < end; i++) {
          newList.add(await _authenticationRepository.getUser(list[i]));
        }
      }
    }
    emit(state.copyWith(
        status: FormzSubmissionStatus.success, peoples: newList));
  }
}
