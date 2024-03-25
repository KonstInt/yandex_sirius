// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapTagModel {
  String get photoUrl => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  CoordinateModel get coordinate => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapTagModelCopyWith<MapTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapTagModelCopyWith<$Res> {
  factory $MapTagModelCopyWith(
          MapTagModel value, $Res Function(MapTagModel) then) =
      _$MapTagModelCopyWithImpl<$Res, MapTagModel>;
  @useResult
  $Res call(
      {String photoUrl, String id, CoordinateModel coordinate, Color color});

  $CoordinateModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$MapTagModelCopyWithImpl<$Res, $Val extends MapTagModel>
    implements $MapTagModelCopyWith<$Res> {
  _$MapTagModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = null,
    Object? id = null,
    Object? coordinate = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateModel,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordinateModelCopyWith<$Res> get coordinate {
    return $CoordinateModelCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MapTagModelImplCopyWith<$Res>
    implements $MapTagModelCopyWith<$Res> {
  factory _$$MapTagModelImplCopyWith(
          _$MapTagModelImpl value, $Res Function(_$MapTagModelImpl) then) =
      __$$MapTagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String photoUrl, String id, CoordinateModel coordinate, Color color});

  @override
  $CoordinateModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$MapTagModelImplCopyWithImpl<$Res>
    extends _$MapTagModelCopyWithImpl<$Res, _$MapTagModelImpl>
    implements _$$MapTagModelImplCopyWith<$Res> {
  __$$MapTagModelImplCopyWithImpl(
      _$MapTagModelImpl _value, $Res Function(_$MapTagModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = null,
    Object? id = null,
    Object? coordinate = null,
    Object? color = null,
  }) {
    return _then(_$MapTagModelImpl(
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as CoordinateModel,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$MapTagModelImpl implements _MapTagModel {
  _$MapTagModelImpl(
      {required this.photoUrl,
      required this.id,
      required this.coordinate,
      this.color = Colors.pink});

  @override
  final String photoUrl;
  @override
  final String id;
  @override
  final CoordinateModel coordinate;
  @override
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'MapTagModel(photoUrl: $photoUrl, id: $id, coordinate: $coordinate, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapTagModelImpl &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photoUrl, id, coordinate, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapTagModelImplCopyWith<_$MapTagModelImpl> get copyWith =>
      __$$MapTagModelImplCopyWithImpl<_$MapTagModelImpl>(this, _$identity);
}

abstract class _MapTagModel implements MapTagModel {
  factory _MapTagModel(
      {required final String photoUrl,
      required final String id,
      required final CoordinateModel coordinate,
      final Color color}) = _$MapTagModelImpl;

  @override
  String get photoUrl;
  @override
  String get id;
  @override
  CoordinateModel get coordinate;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$MapTagModelImplCopyWith<_$MapTagModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
