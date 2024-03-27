// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchState {
  List<dynamic> get peoples => throw _privateConstructorUsedError;
  Set<String> get friends => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<dynamic> peoples,
      Set<String> friends,
      FormzSubmissionStatus status});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peoples = null,
    Object? friends = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      peoples: null == peoples
          ? _value.peoples
          : peoples // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchStateImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchStateImplCopyWith(
          _$SearchStateImpl value, $Res Function(_$SearchStateImpl) then) =
      __$$SearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<dynamic> peoples,
      Set<String> friends,
      FormzSubmissionStatus status});
}

/// @nodoc
class __$$SearchStateImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchStateImpl>
    implements _$$SearchStateImplCopyWith<$Res> {
  __$$SearchStateImplCopyWithImpl(
      _$SearchStateImpl _value, $Res Function(_$SearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? peoples = null,
    Object? friends = null,
    Object? status = null,
  }) {
    return _then(_$SearchStateImpl(
      peoples: null == peoples
          ? _value._peoples
          : peoples // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
    ));
  }
}

/// @nodoc

class _$SearchStateImpl implements _SearchState {
  const _$SearchStateImpl(
      {final List<dynamic> peoples = const <FirebaseApiUserModel>[],
      final Set<String> friends = const {},
      this.status = FormzSubmissionStatus.initial})
      : _peoples = peoples,
        _friends = friends;

  final List<dynamic> _peoples;
  @override
  @JsonKey()
  List<dynamic> get peoples {
    if (_peoples is EqualUnmodifiableListView) return _peoples;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_peoples);
  }

  final Set<String> _friends;
  @override
  @JsonKey()
  Set<String> get friends {
    if (_friends is EqualUnmodifiableSetView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_friends);
  }

  @override
  @JsonKey()
  final FormzSubmissionStatus status;

  @override
  String toString() {
    return 'SearchState(peoples: $peoples, friends: $friends, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchStateImpl &&
            const DeepCollectionEquality().equals(other._peoples, _peoples) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_peoples),
      const DeepCollectionEquality().hash(_friends),
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      __$$SearchStateImplCopyWithImpl<_$SearchStateImpl>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {final List<dynamic> peoples,
      final Set<String> friends,
      final FormzSubmissionStatus status}) = _$SearchStateImpl;

  @override
  List<dynamic> get peoples;
  @override
  Set<String> get friends;
  @override
  FormzSubmissionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$SearchStateImplCopyWith<_$SearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
