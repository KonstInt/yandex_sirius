// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'isar_api_friend_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IsarApiFriendModel _$IsarApiFriendModelFromJson(Map<String, dynamic> json) {
  return _IsarApiFriendModel.fromJson(json);
}

/// @nodoc
mixin _$IsarApiFriendModel {
  String get id => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsarApiFriendModelCopyWith<IsarApiFriendModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsarApiFriendModelCopyWith<$Res> {
  factory $IsarApiFriendModelCopyWith(
          IsarApiFriendModel value, $Res Function(IsarApiFriendModel) then) =
      _$IsarApiFriendModelCopyWithImpl<$Res, IsarApiFriendModel>;
  @useResult
  $Res call({String id, String photoUrl});
}

/// @nodoc
class _$IsarApiFriendModelCopyWithImpl<$Res, $Val extends IsarApiFriendModel>
    implements $IsarApiFriendModelCopyWith<$Res> {
  _$IsarApiFriendModelCopyWithImpl(this._value, this._then);

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
abstract class _$$IsarApiFriendModelImplCopyWith<$Res>
    implements $IsarApiFriendModelCopyWith<$Res> {
  factory _$$IsarApiFriendModelImplCopyWith(_$IsarApiFriendModelImpl value,
          $Res Function(_$IsarApiFriendModelImpl) then) =
      __$$IsarApiFriendModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String photoUrl});
}

/// @nodoc
class __$$IsarApiFriendModelImplCopyWithImpl<$Res>
    extends _$IsarApiFriendModelCopyWithImpl<$Res, _$IsarApiFriendModelImpl>
    implements _$$IsarApiFriendModelImplCopyWith<$Res> {
  __$$IsarApiFriendModelImplCopyWithImpl(_$IsarApiFriendModelImpl _value,
      $Res Function(_$IsarApiFriendModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = null,
  }) {
    return _then(_$IsarApiFriendModelImpl(
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
class _$IsarApiFriendModelImpl implements _IsarApiFriendModel {
  _$IsarApiFriendModelImpl({required this.id, required this.photoUrl});

  factory _$IsarApiFriendModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsarApiFriendModelImplFromJson(json);

  @override
  final String id;
  @override
  final String photoUrl;

  @override
  String toString() {
    return 'IsarApiFriendModel(id: $id, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsarApiFriendModelImpl &&
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
  _$$IsarApiFriendModelImplCopyWith<_$IsarApiFriendModelImpl> get copyWith =>
      __$$IsarApiFriendModelImplCopyWithImpl<_$IsarApiFriendModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsarApiFriendModelImplToJson(
      this,
    );
  }
}

abstract class _IsarApiFriendModel implements IsarApiFriendModel {
  factory _IsarApiFriendModel(
      {required final String id,
      required final String photoUrl}) = _$IsarApiFriendModelImpl;

  factory _IsarApiFriendModel.fromJson(Map<String, dynamic> json) =
      _$IsarApiFriendModelImpl.fromJson;

  @override
  String get id;
  @override
  String get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$IsarApiFriendModelImplCopyWith<_$IsarApiFriendModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
