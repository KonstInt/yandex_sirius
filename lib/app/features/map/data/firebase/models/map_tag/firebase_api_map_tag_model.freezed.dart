// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_api_map_tag_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseApiMapTagModel {
  String get photoUrl => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  CoordinateModel get coordinate => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseApiMapTagModelCopyWith<FirebaseApiMapTagModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseApiMapTagModelCopyWith<$Res> {
  factory $FirebaseApiMapTagModelCopyWith(FirebaseApiMapTagModel value,
          $Res Function(FirebaseApiMapTagModel) then) =
      _$FirebaseApiMapTagModelCopyWithImpl<$Res, FirebaseApiMapTagModel>;
  @useResult
  $Res call(
      {String photoUrl, String id, CoordinateModel coordinate, Color color});

  $CoordinateModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$FirebaseApiMapTagModelCopyWithImpl<$Res,
        $Val extends FirebaseApiMapTagModel>
    implements $FirebaseApiMapTagModelCopyWith<$Res> {
  _$FirebaseApiMapTagModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FirebaseApiMapTagModelImplCopyWith<$Res>
    implements $FirebaseApiMapTagModelCopyWith<$Res> {
  factory _$$FirebaseApiMapTagModelImplCopyWith(
          _$FirebaseApiMapTagModelImpl value,
          $Res Function(_$FirebaseApiMapTagModelImpl) then) =
      __$$FirebaseApiMapTagModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String photoUrl, String id, CoordinateModel coordinate, Color color});

  @override
  $CoordinateModelCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$FirebaseApiMapTagModelImplCopyWithImpl<$Res>
    extends _$FirebaseApiMapTagModelCopyWithImpl<$Res,
        _$FirebaseApiMapTagModelImpl>
    implements _$$FirebaseApiMapTagModelImplCopyWith<$Res> {
  __$$FirebaseApiMapTagModelImplCopyWithImpl(
      _$FirebaseApiMapTagModelImpl _value,
      $Res Function(_$FirebaseApiMapTagModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoUrl = null,
    Object? id = null,
    Object? coordinate = null,
    Object? color = null,
  }) {
    return _then(_$FirebaseApiMapTagModelImpl(
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

class _$FirebaseApiMapTagModelImpl implements _FirebaseApiMapTagModel {
  _$FirebaseApiMapTagModelImpl(
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
    return 'FirebaseApiMapTagModel(photoUrl: $photoUrl, id: $id, coordinate: $coordinate, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseApiMapTagModelImpl &&
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
  _$$FirebaseApiMapTagModelImplCopyWith<_$FirebaseApiMapTagModelImpl>
      get copyWith => __$$FirebaseApiMapTagModelImplCopyWithImpl<
          _$FirebaseApiMapTagModelImpl>(this, _$identity);
}

abstract class _FirebaseApiMapTagModel implements FirebaseApiMapTagModel {
  factory _FirebaseApiMapTagModel(
      {required final String photoUrl,
      required final String id,
      required final CoordinateModel coordinate,
      final Color color}) = _$FirebaseApiMapTagModelImpl;

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
  _$$FirebaseApiMapTagModelImplCopyWith<_$FirebaseApiMapTagModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
