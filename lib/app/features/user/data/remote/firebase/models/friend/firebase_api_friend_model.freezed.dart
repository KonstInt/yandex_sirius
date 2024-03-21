// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_api_friend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirebaseApiFriendModel _$FirebaseApiFriendModelFromJson(
    Map<String, dynamic> json) {
  return _FirebaseApiFriendModel.fromJson(json);
}

/// @nodoc
mixin _$FirebaseApiFriendModel {
  String get id => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirebaseApiFriendModelCopyWith<FirebaseApiFriendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseApiFriendModelCopyWith<$Res> {
  factory $FirebaseApiFriendModelCopyWith(FirebaseApiFriendModel value,
          $Res Function(FirebaseApiFriendModel) then) =
      _$FirebaseApiFriendModelCopyWithImpl<$Res, FirebaseApiFriendModel>;
  @useResult
  $Res call({String id, String photoUrl});
}

/// @nodoc
class _$FirebaseApiFriendModelCopyWithImpl<$Res,
        $Val extends FirebaseApiFriendModel>
    implements $FirebaseApiFriendModelCopyWith<$Res> {
  _$FirebaseApiFriendModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseApiFriendModelImplCopyWith<$Res>
    implements $FirebaseApiFriendModelCopyWith<$Res> {
  factory _$$FirebaseApiFriendModelImplCopyWith(
          _$FirebaseApiFriendModelImpl value,
          $Res Function(_$FirebaseApiFriendModelImpl) then) =
      __$$FirebaseApiFriendModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String photoUrl});
}

/// @nodoc
class __$$FirebaseApiFriendModelImplCopyWithImpl<$Res>
    extends _$FirebaseApiFriendModelCopyWithImpl<$Res,
        _$FirebaseApiFriendModelImpl>
    implements _$$FirebaseApiFriendModelImplCopyWith<$Res> {
  __$$FirebaseApiFriendModelImplCopyWithImpl(
      _$FirebaseApiFriendModelImpl _value,
      $Res Function(_$FirebaseApiFriendModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = null,
  }) {
    return _then(_$FirebaseApiFriendModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirebaseApiFriendModelImpl implements _FirebaseApiFriendModel {
  _$FirebaseApiFriendModelImpl({required this.id, required this.photoUrl});

  factory _$FirebaseApiFriendModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirebaseApiFriendModelImplFromJson(json);

  @override
  final String id;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'FirebaseApiFriendModel(id: $id, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseApiFriendModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseApiFriendModelImplCopyWith<_$FirebaseApiFriendModelImpl>
      get copyWith => __$$FirebaseApiFriendModelImplCopyWithImpl<
          _$FirebaseApiFriendModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirebaseApiFriendModelImplToJson(
      this,
    );
  }
}

abstract class _FirebaseApiFriendModel implements FirebaseApiFriendModel {
  factory _FirebaseApiFriendModel(
      {required final String id,
      required final String photoUrl}) = _$FirebaseApiFriendModelImpl;

  factory _FirebaseApiFriendModel.fromJson(Map<String, dynamic> json) =
      _$FirebaseApiFriendModelImpl.fromJson;

  @override
  String get id;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseApiFriendModelImplCopyWith<_$FirebaseApiFriendModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
