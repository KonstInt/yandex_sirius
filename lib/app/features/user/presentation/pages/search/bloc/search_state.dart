part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    @Default(<FirebaseApiUserModel>[]) List peoples,
    @Default({}) Map<String, bool> isFriend,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
  }) = _SearchState;
}
