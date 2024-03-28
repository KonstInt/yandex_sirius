// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res, SignUpEvent>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res, $Val extends SignUpEvent>
    implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  _$EmailChangedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignUpEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SignUpEvent {
  factory _EmailChanged({required final String email}) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  _$PasswordChangedImpl({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignUpEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SignUpEvent {
  factory _PasswordChanged({required final String password}) =
      _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurnameChangedImplCopyWith<$Res> {
  factory _$$SurnameChangedImplCopyWith(_$SurnameChangedImpl value,
          $Res Function(_$SurnameChangedImpl) then) =
      __$$SurnameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String surname});
}

/// @nodoc
class __$$SurnameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SurnameChangedImpl>
    implements _$$SurnameChangedImplCopyWith<$Res> {
  __$$SurnameChangedImplCopyWithImpl(
      _$SurnameChangedImpl _value, $Res Function(_$SurnameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
  }) {
    return _then(_$SurnameChangedImpl(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SurnameChangedImpl implements _SurnameChanged {
  _$SurnameChangedImpl({required this.surname});

  @override
  final String surname;

  @override
  String toString() {
    return 'SignUpEvent.surnameChanged(surname: $surname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurnameChangedImpl &&
            (identical(other.surname, surname) || other.surname == surname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, surname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SurnameChangedImplCopyWith<_$SurnameChangedImpl> get copyWith =>
      __$$SurnameChangedImplCopyWithImpl<_$SurnameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return surnameChanged(surname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return surnameChanged?.call(surname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (surnameChanged != null) {
      return surnameChanged(surname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return surnameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return surnameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (surnameChanged != null) {
      return surnameChanged(this);
    }
    return orElse();
  }
}

abstract class _SurnameChanged implements SignUpEvent {
  factory _SurnameChanged({required final String surname}) =
      _$SurnameChangedImpl;

  String get surname;
  @JsonKey(ignore: true)
  _$$SurnameChangedImplCopyWith<_$SurnameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  _$NameChangedImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'SignUpEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements SignUpEvent {
  factory _NameChanged({required final String name}) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NicknameChangedImplCopyWith<$Res> {
  factory _$$NicknameChangedImplCopyWith(_$NicknameChangedImpl value,
          $Res Function(_$NicknameChangedImpl) then) =
      __$$NicknameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String nickname});
}

/// @nodoc
class __$$NicknameChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$NicknameChangedImpl>
    implements _$$NicknameChangedImplCopyWith<$Res> {
  __$$NicknameChangedImplCopyWithImpl(
      _$NicknameChangedImpl _value, $Res Function(_$NicknameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
  }) {
    return _then(_$NicknameChangedImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NicknameChangedImpl implements _NicknameChanged {
  _$NicknameChangedImpl({required this.nickname});

  @override
  final String nickname;

  @override
  String toString() {
    return 'SignUpEvent.nicknameChanged(nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NicknameChangedImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nickname);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      __$$NicknameChangedImplCopyWithImpl<_$NicknameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return nicknameChanged?.call(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return nicknameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class _NicknameChanged implements SignUpEvent {
  factory _NicknameChanged({required final String nickname}) =
      _$NicknameChangedImpl;

  String get nickname;
  @JsonKey(ignore: true)
  _$$NicknameChangedImplCopyWith<_$NicknameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoChangedImplCopyWith<$Res> {
  factory _$$PhotoChangedImplCopyWith(
          _$PhotoChangedImpl value, $Res Function(_$PhotoChangedImpl) then) =
      __$$PhotoChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PhotoChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$PhotoChangedImpl>
    implements _$$PhotoChangedImplCopyWith<$Res> {
  __$$PhotoChangedImplCopyWithImpl(
      _$PhotoChangedImpl _value, $Res Function(_$PhotoChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PhotoChangedImpl implements _PhotoChanged {
  _$PhotoChangedImpl();

  @override
  String toString() {
    return 'SignUpEvent.photoChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PhotoChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return photoChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return photoChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return photoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return photoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (photoChanged != null) {
      return photoChanged(this);
    }
    return orElse();
  }
}

abstract class _PhotoChanged implements SignUpEvent {
  factory _PhotoChanged() = _$PhotoChangedImpl;
}

/// @nodoc
abstract class _$$ConfirmedPasswordChangedImplCopyWith<$Res> {
  factory _$$ConfirmedPasswordChangedImplCopyWith(
          _$ConfirmedPasswordChangedImpl value,
          $Res Function(_$ConfirmedPasswordChangedImpl) then) =
      __$$ConfirmedPasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmedPassword});
}

/// @nodoc
class __$$ConfirmedPasswordChangedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$ConfirmedPasswordChangedImpl>
    implements _$$ConfirmedPasswordChangedImplCopyWith<$Res> {
  __$$ConfirmedPasswordChangedImplCopyWithImpl(
      _$ConfirmedPasswordChangedImpl _value,
      $Res Function(_$ConfirmedPasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmedPassword = null,
  }) {
    return _then(_$ConfirmedPasswordChangedImpl(
      confirmedPassword: null == confirmedPassword
          ? _value.confirmedPassword
          : confirmedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmedPasswordChangedImpl implements _ConfirmedPasswordChanged {
  _$ConfirmedPasswordChangedImpl({required this.confirmedPassword});

  @override
  final String confirmedPassword;

  @override
  String toString() {
    return 'SignUpEvent.confirmedPasswordChanged(confirmedPassword: $confirmedPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmedPasswordChangedImpl &&
            (identical(other.confirmedPassword, confirmedPassword) ||
                other.confirmedPassword == confirmedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmedPasswordChangedImplCopyWith<_$ConfirmedPasswordChangedImpl>
      get copyWith => __$$ConfirmedPasswordChangedImplCopyWithImpl<
          _$ConfirmedPasswordChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return confirmedPasswordChanged(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return confirmedPasswordChanged?.call(confirmedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(confirmedPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return confirmedPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return confirmedPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (confirmedPasswordChanged != null) {
      return confirmedPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmedPasswordChanged implements SignUpEvent {
  factory _ConfirmedPasswordChanged({required final String confirmedPassword}) =
      _$ConfirmedPasswordChangedImpl;

  String get confirmedPassword;
  @JsonKey(ignore: true)
  _$$ConfirmedPasswordChangedImplCopyWith<_$ConfirmedPasswordChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthenticationSubmittedImplCopyWith<$Res> {
  factory _$$AuthenticationSubmittedImplCopyWith(
          _$AuthenticationSubmittedImpl value,
          $Res Function(_$AuthenticationSubmittedImpl) then) =
      __$$AuthenticationSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticationSubmittedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$AuthenticationSubmittedImpl>
    implements _$$AuthenticationSubmittedImplCopyWith<$Res> {
  __$$AuthenticationSubmittedImplCopyWithImpl(
      _$AuthenticationSubmittedImpl _value,
      $Res Function(_$AuthenticationSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticationSubmittedImpl implements _AuthenticationSubmitted {
  _$AuthenticationSubmittedImpl();

  @override
  String toString() {
    return 'SignUpEvent.authenticationSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return authenticationSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return authenticationSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (authenticationSubmitted != null) {
      return authenticationSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return authenticationSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return authenticationSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (authenticationSubmitted != null) {
      return authenticationSubmitted(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationSubmitted implements SignUpEvent {
  factory _AuthenticationSubmitted() = _$AuthenticationSubmittedImpl;
}

/// @nodoc
abstract class _$$SignUpFormSubmittedImplCopyWith<$Res> {
  factory _$$SignUpFormSubmittedImplCopyWith(_$SignUpFormSubmittedImpl value,
          $Res Function(_$SignUpFormSubmittedImpl) then) =
      __$$SignUpFormSubmittedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpFormSubmittedImplCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res, _$SignUpFormSubmittedImpl>
    implements _$$SignUpFormSubmittedImplCopyWith<$Res> {
  __$$SignUpFormSubmittedImplCopyWithImpl(_$SignUpFormSubmittedImpl _value,
      $Res Function(_$SignUpFormSubmittedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignUpFormSubmittedImpl implements _SignUpFormSubmitted {
  _$SignUpFormSubmittedImpl();

  @override
  String toString() {
    return 'SignUpEvent.signUpFormSubmitted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpFormSubmittedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String surname) surnameChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function() photoChanged,
    required TResult Function(String confirmedPassword)
        confirmedPasswordChanged,
    required TResult Function() authenticationSubmitted,
    required TResult Function() signUpFormSubmitted,
  }) {
    return signUpFormSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String surname)? surnameChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String nickname)? nicknameChanged,
    TResult? Function()? photoChanged,
    TResult? Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult? Function()? authenticationSubmitted,
    TResult? Function()? signUpFormSubmitted,
  }) {
    return signUpFormSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String surname)? surnameChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function()? photoChanged,
    TResult Function(String confirmedPassword)? confirmedPasswordChanged,
    TResult Function()? authenticationSubmitted,
    TResult Function()? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (signUpFormSubmitted != null) {
      return signUpFormSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_SurnameChanged value) surnameChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_NicknameChanged value) nicknameChanged,
    required TResult Function(_PhotoChanged value) photoChanged,
    required TResult Function(_ConfirmedPasswordChanged value)
        confirmedPasswordChanged,
    required TResult Function(_AuthenticationSubmitted value)
        authenticationSubmitted,
    required TResult Function(_SignUpFormSubmitted value) signUpFormSubmitted,
  }) {
    return signUpFormSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_SurnameChanged value)? surnameChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_NicknameChanged value)? nicknameChanged,
    TResult? Function(_PhotoChanged value)? photoChanged,
    TResult? Function(_ConfirmedPasswordChanged value)?
        confirmedPasswordChanged,
    TResult? Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult? Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
  }) {
    return signUpFormSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_SurnameChanged value)? surnameChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_NicknameChanged value)? nicknameChanged,
    TResult Function(_PhotoChanged value)? photoChanged,
    TResult Function(_ConfirmedPasswordChanged value)? confirmedPasswordChanged,
    TResult Function(_AuthenticationSubmitted value)? authenticationSubmitted,
    TResult Function(_SignUpFormSubmitted value)? signUpFormSubmitted,
    required TResult orElse(),
  }) {
    if (signUpFormSubmitted != null) {
      return signUpFormSubmitted(this);
    }
    return orElse();
  }
}

abstract class _SignUpFormSubmitted implements SignUpEvent {
  factory _SignUpFormSubmitted() = _$SignUpFormSubmittedImpl;
}

/// @nodoc
mixin _$SignUpState {
  String? get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get surname => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get alias => throw _privateConstructorUsedError;
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)
        firstPage,
    required TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)
        secondPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        firstPage,
    TResult? Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        secondPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        firstPage,
    TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        secondPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpStateFirstPage value) firstPage,
    required TResult Function(_SignUpStateSecondPage value) secondPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateFirstPage value)? firstPage,
    TResult? Function(_SignUpStateSecondPage value)? secondPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateFirstPage value)? firstPage,
    TResult Function(_SignUpStateSecondPage value)? secondPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {String? id,
      String email,
      String password,
      String name,
      String surname,
      String photo,
      String alias,
      FormzSubmissionStatus status,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? surname = null,
    Object? photo = null,
    Object? alias = null,
    Object? status = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateFirstPageImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateFirstPageImplCopyWith(_$SignUpStateFirstPageImpl value,
          $Res Function(_$SignUpStateFirstPageImpl) then) =
      __$$SignUpStateFirstPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String email,
      String password,
      String name,
      String surname,
      String photo,
      String alias,
      FormzSubmissionStatus status,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class __$$SignUpStateFirstPageImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateFirstPageImpl>
    implements _$$SignUpStateFirstPageImplCopyWith<$Res> {
  __$$SignUpStateFirstPageImplCopyWithImpl(_$SignUpStateFirstPageImpl _value,
      $Res Function(_$SignUpStateFirstPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? surname = null,
    Object? photo = null,
    Object? alias = null,
    Object? status = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SignUpStateFirstPageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpStateFirstPageImpl implements _SignUpStateFirstPage {
  const _$SignUpStateFirstPageImpl(
      {this.id,
      this.email = '',
      this.password = '',
      this.name = '',
      this.surname = '',
      this.photo = '',
      this.alias = '',
      this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.errorMessage});

  @override
  final String? id;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String surname;
  @override
  @JsonKey()
  final String photo;
  @override
  @JsonKey()
  final String alias;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignUpState.firstPage(id: $id, email: $email, password: $password, name: $name, surname: $surname, photo: $photo, alias: $alias, status: $status, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateFirstPageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, password, name,
      surname, photo, alias, status, isValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateFirstPageImplCopyWith<_$SignUpStateFirstPageImpl>
      get copyWith =>
          __$$SignUpStateFirstPageImplCopyWithImpl<_$SignUpStateFirstPageImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)
        firstPage,
    required TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)
        secondPage,
  }) {
    return firstPage(id, email, password, name, surname, photo, alias, status,
        isValid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        firstPage,
    TResult? Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        secondPage,
  }) {
    return firstPage?.call(id, email, password, name, surname, photo, alias,
        status, isValid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        firstPage,
    TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        secondPage,
    required TResult orElse(),
  }) {
    if (firstPage != null) {
      return firstPage(id, email, password, name, surname, photo, alias, status,
          isValid, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpStateFirstPage value) firstPage,
    required TResult Function(_SignUpStateSecondPage value) secondPage,
  }) {
    return firstPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateFirstPage value)? firstPage,
    TResult? Function(_SignUpStateSecondPage value)? secondPage,
  }) {
    return firstPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateFirstPage value)? firstPage,
    TResult Function(_SignUpStateSecondPage value)? secondPage,
    required TResult orElse(),
  }) {
    if (firstPage != null) {
      return firstPage(this);
    }
    return orElse();
  }
}

abstract class _SignUpStateFirstPage implements SignUpState {
  const factory _SignUpStateFirstPage(
      {final String? id,
      final String email,
      final String password,
      final String name,
      final String surname,
      final String photo,
      final String alias,
      final FormzSubmissionStatus status,
      final bool isValid,
      final String? errorMessage}) = _$SignUpStateFirstPageImpl;

  @override
  String? get id;
  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get photo;
  @override
  String get alias;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateFirstPageImplCopyWith<_$SignUpStateFirstPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignUpStateSecondPageImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateSecondPageImplCopyWith(
          _$SignUpStateSecondPageImpl value,
          $Res Function(_$SignUpStateSecondPageImpl) then) =
      __$$SignUpStateSecondPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String email,
      String password,
      String name,
      String surname,
      String photo,
      String alias,
      FormzSubmissionStatus status,
      bool isValid,
      String? errorMessage});
}

/// @nodoc
class __$$SignUpStateSecondPageImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateSecondPageImpl>
    implements _$$SignUpStateSecondPageImplCopyWith<$Res> {
  __$$SignUpStateSecondPageImplCopyWithImpl(_$SignUpStateSecondPageImpl _value,
      $Res Function(_$SignUpStateSecondPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? email = null,
    Object? password = null,
    Object? name = null,
    Object? surname = null,
    Object? photo = null,
    Object? alias = null,
    Object? status = null,
    Object? isValid = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$SignUpStateSecondPageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      alias: null == alias
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SignUpStateSecondPageImpl implements _SignUpStateSecondPage {
  const _$SignUpStateSecondPageImpl(
      {this.id,
      this.email = '',
      this.password = '',
      this.name = '',
      this.surname = '',
      this.photo = '',
      this.alias = '',
      this.status = FormzSubmissionStatus.initial,
      this.isValid = false,
      this.errorMessage});

  @override
  final String? id;
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String surname;
  @override
  @JsonKey()
  final String photo;
  @override
  @JsonKey()
  final String alias;
  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SignUpState.secondPage(id: $id, email: $email, password: $password, name: $name, surname: $surname, photo: $photo, alias: $alias, status: $status, isValid: $isValid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateSecondPageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, email, password, name,
      surname, photo, alias, status, isValid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateSecondPageImplCopyWith<_$SignUpStateSecondPageImpl>
      get copyWith => __$$SignUpStateSecondPageImplCopyWithImpl<
          _$SignUpStateSecondPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)
        firstPage,
    required TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)
        secondPage,
  }) {
    return secondPage(id, email, password, name, surname, photo, alias, status,
        isValid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        firstPage,
    TResult? Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        secondPage,
  }) {
    return secondPage?.call(id, email, password, name, surname, photo, alias,
        status, isValid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        firstPage,
    TResult Function(
            String? id,
            String email,
            String password,
            String name,
            String surname,
            String photo,
            String alias,
            FormzSubmissionStatus status,
            bool isValid,
            String? errorMessage)?
        secondPage,
    required TResult orElse(),
  }) {
    if (secondPage != null) {
      return secondPage(id, email, password, name, surname, photo, alias,
          status, isValid, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignUpStateFirstPage value) firstPage,
    required TResult Function(_SignUpStateSecondPage value) secondPage,
  }) {
    return secondPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignUpStateFirstPage value)? firstPage,
    TResult? Function(_SignUpStateSecondPage value)? secondPage,
  }) {
    return secondPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignUpStateFirstPage value)? firstPage,
    TResult Function(_SignUpStateSecondPage value)? secondPage,
    required TResult orElse(),
  }) {
    if (secondPage != null) {
      return secondPage(this);
    }
    return orElse();
  }
}

abstract class _SignUpStateSecondPage implements SignUpState {
  const factory _SignUpStateSecondPage(
      {final String? id,
      final String email,
      final String password,
      final String name,
      final String surname,
      final String photo,
      final String alias,
      final FormzSubmissionStatus status,
      final bool isValid,
      final String? errorMessage}) = _$SignUpStateSecondPageImpl;

  @override
  String? get id;
  @override
  String get email;
  @override
  String get password;
  @override
  String get name;
  @override
  String get surname;
  @override
  String get photo;
  @override
  String get alias;
  @override
  FormzSubmissionStatus get status;
  @override
  bool get isValid;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$SignUpStateSecondPageImplCopyWith<_$SignUpStateSecondPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
