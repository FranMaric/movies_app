// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureTearOff {
  const _$FailureTearOff();

  _Generic generic(String message) {
    return _Generic(
      message,
    );
  }

  _NoNetwork noNetwork() {
    return const _NoNetwork();
  }

  _Unauthorized unauthorized() {
    return const _Unauthorized();
  }

  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
const $Failure = _$FailureTearOff();

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) generic,
    required TResult Function() noNetwork,
    required TResult Function() unauthorized,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generic value) generic,
    required TResult Function(_NoNetwork value) noNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$GenericCopyWith<$Res> {
  factory _$GenericCopyWith(_Generic value, $Res Function(_Generic) then) =
      __$GenericCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$GenericCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$GenericCopyWith<$Res> {
  __$GenericCopyWithImpl(_Generic _value, $Res Function(_Generic) _then)
      : super(_value, (v) => _then(v as _Generic));

  @override
  _Generic get _value => super._value as _Generic;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_Generic(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Generic implements _Generic {
  const _$_Generic(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.generic(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Generic &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$GenericCopyWith<_Generic> get copyWith =>
      __$GenericCopyWithImpl<_Generic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) generic,
    required TResult Function() noNetwork,
    required TResult Function() unauthorized,
    required TResult Function() serverError,
  }) {
    return generic(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
  }) {
    return generic?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generic value) generic,
    required TResult Function(_NoNetwork value) noNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
  }) {
    return generic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
  }) {
    return generic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (generic != null) {
      return generic(this);
    }
    return orElse();
  }
}

abstract class _Generic implements Failure {
  const factory _Generic(String message) = _$_Generic;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenericCopyWith<_Generic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoNetworkCopyWith<$Res> {
  factory _$NoNetworkCopyWith(
          _NoNetwork value, $Res Function(_NoNetwork) then) =
      __$NoNetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoNetworkCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$NoNetworkCopyWith<$Res> {
  __$NoNetworkCopyWithImpl(_NoNetwork _value, $Res Function(_NoNetwork) _then)
      : super(_value, (v) => _then(v as _NoNetwork));

  @override
  _NoNetwork get _value => super._value as _NoNetwork;
}

/// @nodoc

class _$_NoNetwork implements _NoNetwork {
  const _$_NoNetwork();

  @override
  String toString() {
    return 'Failure.noNetwork()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoNetwork);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) generic,
    required TResult Function() noNetwork,
    required TResult Function() unauthorized,
    required TResult Function() serverError,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generic value) generic,
    required TResult Function(_NoNetwork value) noNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class _NoNetwork implements Failure {
  const factory _NoNetwork() = _$_NoNetwork;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

/// @nodoc

class _$_Unauthorized implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) generic,
    required TResult Function() noNetwork,
    required TResult Function() unauthorized,
    required TResult Function() serverError,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generic value) generic,
    required TResult Function(_NoNetwork value) noNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements Failure {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'Failure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) generic,
    required TResult Function() noNetwork,
    required TResult Function() unauthorized,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? generic,
    TResult Function()? noNetwork,
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Generic value) generic,
    required TResult Function(_NoNetwork value) noNetwork,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Generic value)? generic,
    TResult Function(_NoNetwork value)? noNetwork,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError() = _$_ServerError;
}
