// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_api_coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseApiCoordinateModel {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseApiCoordinateModelCopyWith<FirebaseApiCoordinateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseApiCoordinateModelCopyWith<$Res> {
  factory $FirebaseApiCoordinateModelCopyWith(FirebaseApiCoordinateModel value,
          $Res Function(FirebaseApiCoordinateModel) then) =
      _$FirebaseApiCoordinateModelCopyWithImpl<$Res,
          FirebaseApiCoordinateModel>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$FirebaseApiCoordinateModelCopyWithImpl<$Res,
        $Val extends FirebaseApiCoordinateModel>
    implements $FirebaseApiCoordinateModelCopyWith<$Res> {
  _$FirebaseApiCoordinateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_value.copyWith(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseApiCoordinateModelImplCopyWith<$Res>
    implements $FirebaseApiCoordinateModelCopyWith<$Res> {
  factory _$$FirebaseApiCoordinateModelImplCopyWith(
          _$FirebaseApiCoordinateModelImpl value,
          $Res Function(_$FirebaseApiCoordinateModelImpl) then) =
      __$$FirebaseApiCoordinateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$FirebaseApiCoordinateModelImplCopyWithImpl<$Res>
    extends _$FirebaseApiCoordinateModelCopyWithImpl<$Res,
        _$FirebaseApiCoordinateModelImpl>
    implements _$$FirebaseApiCoordinateModelImplCopyWith<$Res> {
  __$$FirebaseApiCoordinateModelImplCopyWithImpl(
      _$FirebaseApiCoordinateModelImpl _value,
      $Res Function(_$FirebaseApiCoordinateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$FirebaseApiCoordinateModelImpl(
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$FirebaseApiCoordinateModelImpl implements _FirebaseApiCoordinateModel {
  _$FirebaseApiCoordinateModelImpl(
      {required this.longitude, required this.latitude});

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'FirebaseApiCoordinateModel(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseApiCoordinateModelImpl &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, longitude, latitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseApiCoordinateModelImplCopyWith<_$FirebaseApiCoordinateModelImpl>
      get copyWith => __$$FirebaseApiCoordinateModelImplCopyWithImpl<
          _$FirebaseApiCoordinateModelImpl>(this, _$identity);
}

abstract class _FirebaseApiCoordinateModel
    implements FirebaseApiCoordinateModel {
  factory _FirebaseApiCoordinateModel(
      {required final double longitude,
      required final double latitude}) = _$FirebaseApiCoordinateModelImpl;

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseApiCoordinateModelImplCopyWith<_$FirebaseApiCoordinateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
