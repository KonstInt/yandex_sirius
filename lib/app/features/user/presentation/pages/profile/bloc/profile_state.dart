part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default('') String email,
    @Default('') String name,
    @Default('') String secondName,
    @Default('') String nickName,
    String? photo,
  }) = _ProfileState;
}
