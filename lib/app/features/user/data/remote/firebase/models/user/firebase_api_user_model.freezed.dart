// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_api_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseApiUserModel _$FirebaseApiUserModelFromJson(Map<String, dynamic> json) {
  return _FirebaseApiUserModel.fromJson(json);
}

/// @nodoc
mixin _$FirebaseApiUserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get secondName => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  List<FirebaseApiFriendModel> get friendList =>
      throw _privateConstructorUsedError;
  bool get isOnline => throw _privateConstructorUsedError;
  bool get isGeoTrackingOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseApiUserModelCopyWith<FirebaseApiUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseApiUserModelCopyWith<$Res> {
  factory $FirebaseApiUserModelCopyWith(FirebaseApiUserModel value,
          $Res Function(FirebaseApiUserModel) then) =
      _$FirebaseApiUserModelCopyWithImpl<$Res, FirebaseApiUserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String secondName,
      String nickname,
      String? photoUrl,
      List<FirebaseApiFriendModel> friendList,
      bool isOnline,
      bool isGeoTrackingOn});
}

/// @nodoc
class _$FirebaseApiUserModelCopyWithImpl<$Res,
        $Val extends FirebaseApiUserModel>
    implements $FirebaseApiUserModelCopyWith<$Res> {
  _$FirebaseApiUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? secondName = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? friendList = null,
    Object? isOnline = null,
    Object? isGeoTrackingOn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      friendList: null == friendList
          ? _value.friendList
          : friendList // ignore: cast_nullable_to_non_nullable
              as List<FirebaseApiFriendModel>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isGeoTrackingOn: null == isGeoTrackingOn
          ? _value.isGeoTrackingOn
          : isGeoTrackingOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseApiUserModelImplCopyWith<$Res>
    implements $FirebaseApiUserModelCopyWith<$Res> {
  factory _$$FirebaseApiUserModelImplCopyWith(_$FirebaseApiUserModelImpl value,
          $Res Function(_$FirebaseApiUserModelImpl) then) =
      __$$FirebaseApiUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String name,
      String secondName,
      String nickname,
      String? photoUrl,
      List<FirebaseApiFriendModel> friendList,
      bool isOnline,
      bool isGeoTrackingOn});
}

/// @nodoc
class __$$FirebaseApiUserModelImplCopyWithImpl<$Res>
    extends _$FirebaseApiUserModelCopyWithImpl<$Res, _$FirebaseApiUserModelImpl>
    implements _$$FirebaseApiUserModelImplCopyWith<$Res> {
  __$$FirebaseApiUserModelImplCopyWithImpl(_$FirebaseApiUserModelImpl _value,
      $Res Function(_$FirebaseApiUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? name = null,
    Object? secondName = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? friendList = null,
    Object? isOnline = null,
    Object? isGeoTrackingOn = null,
  }) {
    return _then(_$FirebaseApiUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      secondName: null == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      friendList: null == friendList
          ? _value._friendList
          : friendList // ignore: cast_nullable_to_non_nullable
              as List<FirebaseApiFriendModel>,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      isGeoTrackingOn: null == isGeoTrackingOn
          ? _value.isGeoTrackingOn
          : isGeoTrackingOn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseApiUserModelImpl implements _FirebaseApiUserModel {
  _$FirebaseApiUserModelImpl(
      {required this.id,
      required this.email,
      required this.name,
      required this.secondName,
      required this.nickname,
      required this.photoUrl,
      required final List<FirebaseApiFriendModel> friendList,
      required this.isOnline,
      required this.isGeoTrackingOn})
      : _friendList = friendList;

  factory _$FirebaseApiUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseApiUserModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String secondName;
  @override
  final String nickname;
  @override
  final String? photoUrl;
  final List<FirebaseApiFriendModel> _friendList;
  @override
  List<FirebaseApiFriendModel> get friendList {
    if (_friendList is EqualUnmodifiableListView) return _friendList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friendList);
  }

  @override
  final bool isOnline;
  @override
  final bool isGeoTrackingOn;

  @override
  String toString() {
    return 'FirebaseApiUserModel(id: $id, email: $email, name: $name, secondName: $secondName, nickname: $nickname, photoUrl: $photoUrl, friendList: $friendList, isOnline: $isOnline, isGeoTrackingOn: $isGeoTrackingOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseApiUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            const DeepCollectionEquality()
                .equals(other._friendList, _friendList) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.isGeoTrackingOn, isGeoTrackingOn) ||
                other.isGeoTrackingOn == isGeoTrackingOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      name,
      secondName,
      nickname,
      photoUrl,
      const DeepCollectionEquality().hash(_friendList),
      isOnline,
      isGeoTrackingOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseApiUserModelImplCopyWith<_$FirebaseApiUserModelImpl>
      get copyWith =>
          __$$FirebaseApiUserModelImplCopyWithImpl<_$FirebaseApiUserModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseApiUserModelImplToJson(
      this,
    );
  }
}

abstract class _FirebaseApiUserModel implements FirebaseApiUserModel {
  factory _FirebaseApiUserModel(
      {required final String id,
      required final String email,
      required final String name,
      required final String secondName,
      required final String nickname,
      required final String? photoUrl,
      required final List<FirebaseApiFriendModel> friendList,
      required final bool isOnline,
      required final bool isGeoTrackingOn}) = _$FirebaseApiUserModelImpl;

  factory _FirebaseApiUserModel.fromJson(Map<String, dynamic> json) =
      _$FirebaseApiUserModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String get secondName;
  @override
  String get nickname;
  @override
  String? get photoUrl;
  @override
  List<FirebaseApiFriendModel> get friendList;
  @override
  bool get isOnline;
  @override
  bool get isGeoTrackingOn;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseApiUserModelImplCopyWith<_$FirebaseApiUserModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
