// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_coordinates_api_coordinate_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalCoordinatesApiCoordinateModel {
  double get longitude => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalCoordinatesApiCoordinateModelCopyWith<
          LocalCoordinatesApiCoordinateModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalCoordinatesApiCoordinateModelCopyWith<$Res> {
  factory $LocalCoordinatesApiCoordinateModelCopyWith(
          LocalCoordinatesApiCoordinateModel value,
          $Res Function(LocalCoordinatesApiCoordinateModel) then) =
      _$LocalCoordinatesApiCoordinateModelCopyWithImpl<$Res,
          LocalCoordinatesApiCoordinateModel>;
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class _$LocalCoordinatesApiCoordinateModelCopyWithImpl<$Res,
        $Val extends LocalCoordinatesApiCoordinateModel>
    implements $LocalCoordinatesApiCoordinateModelCopyWith<$Res> {
  _$LocalCoordinatesApiCoordinateModelCopyWithImpl(this._value, this._then);

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
abstract class _$$LocalCoordinatesApiCoordinateModelImplCopyWith<$Res>
    implements $LocalCoordinatesApiCoordinateModelCopyWith<$Res> {
  factory _$$LocalCoordinatesApiCoordinateModelImplCopyWith(
          _$LocalCoordinatesApiCoordinateModelImpl value,
          $Res Function(_$LocalCoordinatesApiCoordinateModelImpl) then) =
      __$$LocalCoordinatesApiCoordinateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double longitude, double latitude});
}

/// @nodoc
class __$$LocalCoordinatesApiCoordinateModelImplCopyWithImpl<$Res>
    extends _$LocalCoordinatesApiCoordinateModelCopyWithImpl<$Res,
        _$LocalCoordinatesApiCoordinateModelImpl>
    implements _$$LocalCoordinatesApiCoordinateModelImplCopyWith<$Res> {
  __$$LocalCoordinatesApiCoordinateModelImplCopyWithImpl(
      _$LocalCoordinatesApiCoordinateModelImpl _value,
      $Res Function(_$LocalCoordinatesApiCoordinateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? longitude = null,
    Object? latitude = null,
  }) {
    return _then(_$LocalCoordinatesApiCoordinateModelImpl(
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

class _$LocalCoordinatesApiCoordinateModelImpl
    implements _LocalCoordinatesApiCoordinateModel {
  _$LocalCoordinatesApiCoordinateModelImpl(
      {required this.longitude, required this.latitude});

  @override
  final double longitude;
  @override
  final double latitude;

  @override
  String toString() {
    return 'LocalCoordinatesApiCoordinateModel(longitude: $longitude, latitude: $latitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalCoordinatesApiCoordinateModelImpl &&
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
  _$$LocalCoordinatesApiCoordinateModelImplCopyWith<
          _$LocalCoordinatesApiCoordinateModelImpl>
      get copyWith => __$$LocalCoordinatesApiCoordinateModelImplCopyWithImpl<
          _$LocalCoordinatesApiCoordinateModelImpl>(this, _$identity);
}

abstract class _LocalCoordinatesApiCoordinateModel
    implements LocalCoordinatesApiCoordinateModel {
  factory _LocalCoordinatesApiCoordinateModel(
          {required final double longitude, required final double latitude}) =
      _$LocalCoordinatesApiCoordinateModelImpl;

  @override
  double get longitude;
  @override
  double get latitude;
  @override
  @JsonKey(ignore: true)
  _$$LocalCoordinatesApiCoordinateModelImplCopyWith<
          _$LocalCoordinatesApiCoordinateModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
