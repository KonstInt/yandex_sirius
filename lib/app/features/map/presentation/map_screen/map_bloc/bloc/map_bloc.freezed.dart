// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FriendsMapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MapController mapController) started,
    required TResult Function() goHome,
    required TResult Function() nextFriend,
    required TResult Function() showAllFriends,
    required TResult Function(double value) changeZoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MapController mapController)? started,
    TResult? Function()? goHome,
    TResult? Function()? nextFriend,
    TResult? Function()? showAllFriends,
    TResult? Function(double value)? changeZoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MapController mapController)? started,
    TResult Function()? goHome,
    TResult Function()? nextFriend,
    TResult Function()? showAllFriends,
    TResult Function(double value)? changeZoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoHome value) goHome,
    required TResult Function(_NextFriend value) nextFriend,
    required TResult Function(_ShowAllFriends value) showAllFriends,
    required TResult Function(_changeZoom value) changeZoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoHome value)? goHome,
    TResult? Function(_NextFriend value)? nextFriend,
    TResult? Function(_ShowAllFriends value)? showAllFriends,
    TResult? Function(_changeZoom value)? changeZoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoHome value)? goHome,
    TResult Function(_NextFriend value)? nextFriend,
    TResult Function(_ShowAllFriends value)? showAllFriends,
    TResult Function(_changeZoom value)? changeZoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsMapEventCopyWith<$Res> {
  factory $FriendsMapEventCopyWith(
          FriendsMapEvent value, $Res Function(FriendsMapEvent) then) =
      _$FriendsMapEventCopyWithImpl<$Res, FriendsMapEvent>;
}

/// @nodoc
class _$FriendsMapEventCopyWithImpl<$Res, $Val extends FriendsMapEvent>
    implements $FriendsMapEventCopyWith<$Res> {
  _$FriendsMapEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MapController mapController});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$FriendsMapEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mapController = null,
  }) {
    return _then(_$StartedImpl(
      null == mapController
          ? _value.mapController
          : mapController // ignore: cast_nullable_to_non_nullable
              as MapController,
    ));
  }
}

/// @nodoc

class _$StartedImpl with DiagnosticableTreeMixin implements _Started {
  const _$StartedImpl(this.mapController);

  @override
  final MapController mapController;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FriendsMapEvent.started(mapController: $mapController)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FriendsMapEvent.started'))
      ..add(DiagnosticsProperty('mapController', mapController));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.mapController, mapController) ||
                other.mapController == mapController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mapController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MapController mapController) started,
    required TResult Function() goHome,
    required TResult Function() nextFriend,
    required TResult Function() showAllFriends,
    required TResult Function(double value) changeZoom,
  }) {
    return started(mapController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MapController mapController)? started,
    TResult? Function()? goHome,
    TResult? Function()? nextFriend,
    TResult? Function()? showAllFriends,
    TResult? Function(double value)? changeZoom,
  }) {
    return started?.call(mapController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MapController mapController)? started,
    TResult Function()? goHome,
    TResult Function()? nextFriend,
    TResult Function()? showAllFriends,
    TResult Function(double value)? changeZoom,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(mapController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoHome value) goHome,
    required TResult Function(_NextFriend value) nextFriend,
    required TResult Function(_ShowAllFriends value) showAllFriends,
    required TResult Function(_changeZoom value) changeZoom,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoHome value)? goHome,
    TResult? Function(_NextFriend value)? nextFriend,
    TResult? Function(_ShowAllFriends value)? showAllFriends,
    TResult? Function(_changeZoom value)? changeZoom,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoHome value)? goHome,
    TResult Function(_NextFriend value)? nextFriend,
    TResult Function(_ShowAllFriends value)? showAllFriends,
    TResult Function(_changeZoom value)? changeZoom,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FriendsMapEvent {
  const factory _Started(final MapController mapController) = _$StartedImpl;

  MapController get mapController;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoHomeImplCopyWith<$Res> {
  factory _$$GoHomeImplCopyWith(
          _$GoHomeImpl value, $Res Function(_$GoHomeImpl) then) =
      __$$GoHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoHomeImplCopyWithImpl<$Res>
    extends _$FriendsMapEventCopyWithImpl<$Res, _$GoHomeImpl>
    implements _$$GoHomeImplCopyWith<$Res> {
  __$$GoHomeImplCopyWithImpl(
      _$GoHomeImpl _value, $Res Function(_$GoHomeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoHomeImpl with DiagnosticableTreeMixin implements _GoHome {
  const _$GoHomeImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FriendsMapEvent.goHome()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FriendsMapEvent.goHome'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MapController mapController) started,
    required TResult Function() goHome,
    required TResult Function() nextFriend,
    required TResult Function() showAllFriends,
    required TResult Function(double value) changeZoom,
  }) {
    return goHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MapController mapController)? started,
    TResult? Function()? goHome,
    TResult? Function()? nextFriend,
    TResult? Function()? showAllFriends,
    TResult? Function(double value)? changeZoom,
  }) {
    return goHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MapController mapController)? started,
    TResult Function()? goHome,
    TResult Function()? nextFriend,
    TResult Function()? showAllFriends,
    TResult Function(double value)? changeZoom,
    required TResult orElse(),
  }) {
    if (goHome != null) {
      return goHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoHome value) goHome,
    required TResult Function(_NextFriend value) nextFriend,
    required TResult Function(_ShowAllFriends value) showAllFriends,
    required TResult Function(_changeZoom value) changeZoom,
  }) {
    return goHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoHome value)? goHome,
    TResult? Function(_NextFriend value)? nextFriend,
    TResult? Function(_ShowAllFriends value)? showAllFriends,
    TResult? Function(_changeZoom value)? changeZoom,
  }) {
    return goHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoHome value)? goHome,
    TResult Function(_NextFriend value)? nextFriend,
    TResult Function(_ShowAllFriends value)? showAllFriends,
    TResult Function(_changeZoom value)? changeZoom,
    required TResult orElse(),
  }) {
    if (goHome != null) {
      return goHome(this);
    }
    return orElse();
  }
}

abstract class _GoHome implements FriendsMapEvent {
  const factory _GoHome() = _$GoHomeImpl;
}

/// @nodoc
abstract class _$$NextFriendImplCopyWith<$Res> {
  factory _$$NextFriendImplCopyWith(
          _$NextFriendImpl value, $Res Function(_$NextFriendImpl) then) =
      __$$NextFriendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextFriendImplCopyWithImpl<$Res>
    extends _$FriendsMapEventCopyWithImpl<$Res, _$NextFriendImpl>
    implements _$$NextFriendImplCopyWith<$Res> {
  __$$NextFriendImplCopyWithImpl(
      _$NextFriendImpl _value, $Res Function(_$NextFriendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextFriendImpl with DiagnosticableTreeMixin implements _NextFriend {
  const _$NextFriendImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FriendsMapEvent.nextFriend()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'FriendsMapEvent.nextFriend'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextFriendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MapController mapController) started,
    required TResult Function() goHome,
    required TResult Function() nextFriend,
    required TResult Function() showAllFriends,
    required TResult Function(double value) changeZoom,
  }) {
    return nextFriend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MapController mapController)? started,
    TResult? Function()? goHome,
    TResult? Function()? nextFriend,
    TResult? Function()? showAllFriends,
    TResult? Function(double value)? changeZoom,
  }) {
    return nextFriend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MapController mapController)? started,
    TResult Function()? goHome,
    TResult Function()? nextFriend,
    TResult Function()? showAllFriends,
    TResult Function(double value)? changeZoom,
    required TResult orElse(),
  }) {
    if (nextFriend != null) {
      return nextFriend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoHome value) goHome,
    required TResult Function(_NextFriend value) nextFriend,
    required TResult Function(_ShowAllFriends value) showAllFriends,
    required TResult Function(_changeZoom value) changeZoom,
  }) {
    return nextFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoHome value)? goHome,
    TResult? Function(_NextFriend value)? nextFriend,
    TResult? Function(_ShowAllFriends value)? showAllFriends,
    TResult? Function(_changeZoom value)? changeZoom,
  }) {
    return nextFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoHome value)? goHome,
    TResult Function(_NextFriend value)? nextFriend,
    TResult Function(_ShowAllFriends value)? showAllFriends,
    TResult Function(_changeZoom value)? changeZoom,
    required TResult orElse(),
  }) {
    if (nextFriend != null) {
      return nextFriend(this);
    }
    return orElse();
  }
}

abstract class _NextFriend implements FriendsMapEvent {
  const factory _NextFriend() = _$NextFriendImpl;
}

/// @nodoc
abstract class _$$ShowAllFriendsImplCopyWith<$Res> {
  factory _$$ShowAllFriendsImplCopyWith(_$ShowAllFriendsImpl value,
          $Res Function(_$ShowAllFriendsImpl) then) =
      __$$ShowAllFriendsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowAllFriendsImplCopyWithImpl<$Res>
    extends _$FriendsMapEventCopyWithImpl<$Res, _$ShowAllFriendsImpl>
    implements _$$ShowAllFriendsImplCopyWith<$Res> {
  __$$ShowAllFriendsImplCopyWithImpl(
      _$ShowAllFriendsImpl _value, $Res Function(_$ShowAllFriendsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ShowAllFriendsImpl
    with DiagnosticableTreeMixin
    implements _ShowAllFriends {
  const _$ShowAllFriendsImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FriendsMapEvent.showAllFriends()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'FriendsMapEvent.showAllFriends'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowAllFriendsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MapController mapController) started,
    required TResult Function() goHome,
    required TResult Function() nextFriend,
    required TResult Function() showAllFriends,
    required TResult Function(double value) changeZoom,
  }) {
    return showAllFriends();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MapController mapController)? started,
    TResult? Function()? goHome,
    TResult? Function()? nextFriend,
    TResult? Function()? showAllFriends,
    TResult? Function(double value)? changeZoom,
  }) {
    return showAllFriends?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MapController mapController)? started,
    TResult Function()? goHome,
    TResult Function()? nextFriend,
    TResult Function()? showAllFriends,
    TResult Function(double value)? changeZoom,
    required TResult orElse(),
  }) {
    if (showAllFriends != null) {
      return showAllFriends();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoHome value) goHome,
    required TResult Function(_NextFriend value) nextFriend,
    required TResult Function(_ShowAllFriends value) showAllFriends,
    required TResult Function(_changeZoom value) changeZoom,
  }) {
    return showAllFriends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoHome value)? goHome,
    TResult? Function(_NextFriend value)? nextFriend,
    TResult? Function(_ShowAllFriends value)? showAllFriends,
    TResult? Function(_changeZoom value)? changeZoom,
  }) {
    return showAllFriends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoHome value)? goHome,
    TResult Function(_NextFriend value)? nextFriend,
    TResult Function(_ShowAllFriends value)? showAllFriends,
    TResult Function(_changeZoom value)? changeZoom,
    required TResult orElse(),
  }) {
    if (showAllFriends != null) {
      return showAllFriends(this);
    }
    return orElse();
  }
}

abstract class _ShowAllFriends implements FriendsMapEvent {
  const factory _ShowAllFriends() = _$ShowAllFriendsImpl;
}

/// @nodoc
abstract class _$$changeZoomImplCopyWith<$Res> {
  factory _$$changeZoomImplCopyWith(
          _$changeZoomImpl value, $Res Function(_$changeZoomImpl) then) =
      __$$changeZoomImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$changeZoomImplCopyWithImpl<$Res>
    extends _$FriendsMapEventCopyWithImpl<$Res, _$changeZoomImpl>
    implements _$$changeZoomImplCopyWith<$Res> {
  __$$changeZoomImplCopyWithImpl(
      _$changeZoomImpl _value, $Res Function(_$changeZoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$changeZoomImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$changeZoomImpl with DiagnosticableTreeMixin implements _changeZoom {
  const _$changeZoomImpl(this.value);

  @override
  final double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FriendsMapEvent.changeZoom(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FriendsMapEvent.changeZoom'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeZoomImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changeZoomImplCopyWith<_$changeZoomImpl> get copyWith =>
      __$$changeZoomImplCopyWithImpl<_$changeZoomImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MapController mapController) started,
    required TResult Function() goHome,
    required TResult Function() nextFriend,
    required TResult Function() showAllFriends,
    required TResult Function(double value) changeZoom,
  }) {
    return changeZoom(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MapController mapController)? started,
    TResult? Function()? goHome,
    TResult? Function()? nextFriend,
    TResult? Function()? showAllFriends,
    TResult? Function(double value)? changeZoom,
  }) {
    return changeZoom?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MapController mapController)? started,
    TResult Function()? goHome,
    TResult Function()? nextFriend,
    TResult Function()? showAllFriends,
    TResult Function(double value)? changeZoom,
    required TResult orElse(),
  }) {
    if (changeZoom != null) {
      return changeZoom(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoHome value) goHome,
    required TResult Function(_NextFriend value) nextFriend,
    required TResult Function(_ShowAllFriends value) showAllFriends,
    required TResult Function(_changeZoom value) changeZoom,
  }) {
    return changeZoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoHome value)? goHome,
    TResult? Function(_NextFriend value)? nextFriend,
    TResult? Function(_ShowAllFriends value)? showAllFriends,
    TResult? Function(_changeZoom value)? changeZoom,
  }) {
    return changeZoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoHome value)? goHome,
    TResult Function(_NextFriend value)? nextFriend,
    TResult Function(_ShowAllFriends value)? showAllFriends,
    TResult Function(_changeZoom value)? changeZoom,
    required TResult orElse(),
  }) {
    if (changeZoom != null) {
      return changeZoom(this);
    }
    return orElse();
  }
}

abstract class _changeZoom implements FriendsMapEvent {
  const factory _changeZoom(final double value) = _$changeZoomImpl;

  double get value;
  @JsonKey(ignore: true)
  _$$changeZoomImplCopyWith<_$changeZoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)
        updCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UpdCoordinates value) updCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UpdCoordinates value)? updCoordinates,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UpdCoordinates value)? updCoordinates,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res, MapState>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res, $Val extends MapState>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MapState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)
        updCoordinates,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UpdCoordinates value) updCoordinates,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UpdCoordinates value)? updCoordinates,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UpdCoordinates value)? updCoordinates,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements _Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MapState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)
        updCoordinates,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UpdCoordinates value) updCoordinates,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UpdCoordinates value)? updCoordinates,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UpdCoordinates value)? updCoordinates,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MapState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UpdCoordinatesImplCopyWith<$Res> {
  factory _$$UpdCoordinatesImplCopyWith(_$UpdCoordinatesImpl value,
          $Res Function(_$UpdCoordinatesImpl) then) =
      __$$UpdCoordinatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate});
}

/// @nodoc
class __$$UpdCoordinatesImplCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res, _$UpdCoordinatesImpl>
    implements _$$UpdCoordinatesImplCopyWith<$Res> {
  __$$UpdCoordinatesImplCopyWithImpl(
      _$UpdCoordinatesImpl _value, $Res Function(_$UpdCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nowCoordinate = null,
    Object? prevCoordinate = null,
  }) {
    return _then(_$UpdCoordinatesImpl(
      nowCoordinate: null == nowCoordinate
          ? _value._nowCoordinate
          : nowCoordinate // ignore: cast_nullable_to_non_nullable
              as List<MapTagModel>,
      prevCoordinate: null == prevCoordinate
          ? _value._prevCoordinate
          : prevCoordinate // ignore: cast_nullable_to_non_nullable
              as List<MapTagModel>,
    ));
  }
}

/// @nodoc

class _$UpdCoordinatesImpl
    with DiagnosticableTreeMixin
    implements _UpdCoordinates {
  const _$UpdCoordinatesImpl(
      {required final List<MapTagModel> nowCoordinate,
      required final List<MapTagModel> prevCoordinate})
      : _nowCoordinate = nowCoordinate,
        _prevCoordinate = prevCoordinate;

  final List<MapTagModel> _nowCoordinate;
  @override
  List<MapTagModel> get nowCoordinate {
    if (_nowCoordinate is EqualUnmodifiableListView) return _nowCoordinate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowCoordinate);
  }

  final List<MapTagModel> _prevCoordinate;
  @override
  List<MapTagModel> get prevCoordinate {
    if (_prevCoordinate is EqualUnmodifiableListView) return _prevCoordinate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prevCoordinate);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MapState.updCoordinates(nowCoordinate: $nowCoordinate, prevCoordinate: $prevCoordinate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MapState.updCoordinates'))
      ..add(DiagnosticsProperty('nowCoordinate', nowCoordinate))
      ..add(DiagnosticsProperty('prevCoordinate', prevCoordinate));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdCoordinatesImpl &&
            const DeepCollectionEquality()
                .equals(other._nowCoordinate, _nowCoordinate) &&
            const DeepCollectionEquality()
                .equals(other._prevCoordinate, _prevCoordinate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nowCoordinate),
      const DeepCollectionEquality().hash(_prevCoordinate));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdCoordinatesImplCopyWith<_$UpdCoordinatesImpl> get copyWith =>
      __$$UpdCoordinatesImplCopyWithImpl<_$UpdCoordinatesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)
        updCoordinates,
  }) {
    return updCoordinates(nowCoordinate, prevCoordinate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
  }) {
    return updCoordinates?.call(nowCoordinate, prevCoordinate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<MapTagModel> nowCoordinate, List<MapTagModel> prevCoordinate)?
        updCoordinates,
    required TResult orElse(),
  }) {
    if (updCoordinates != null) {
      return updCoordinates(nowCoordinate, prevCoordinate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UpdCoordinates value) updCoordinates,
  }) {
    return updCoordinates(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UpdCoordinates value)? updCoordinates,
  }) {
    return updCoordinates?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UpdCoordinates value)? updCoordinates,
    required TResult orElse(),
  }) {
    if (updCoordinates != null) {
      return updCoordinates(this);
    }
    return orElse();
  }
}

abstract class _UpdCoordinates implements MapState {
  const factory _UpdCoordinates(
      {required final List<MapTagModel> nowCoordinate,
      required final List<MapTagModel> prevCoordinate}) = _$UpdCoordinatesImpl;

  List<MapTagModel> get nowCoordinate;
  List<MapTagModel> get prevCoordinate;
  @JsonKey(ignore: true)
  _$$UpdCoordinatesImplCopyWith<_$UpdCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
