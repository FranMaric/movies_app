// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'guest_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GuestSession _$GuestSessionFromJson(Map<String, dynamic> json) {
  return _GuestSession.fromJson(json);
}

/// @nodoc
class _$GuestSessionTearOff {
  const _$GuestSessionTearOff();

  _GuestSession call(
      {@JsonKey(name: 'guest_session_id')
          required String id,
      @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
          required DateTime expiresAt}) {
    return _GuestSession(
      id: id,
      expiresAt: expiresAt,
    );
  }

  GuestSession fromJson(Map<String, Object> json) {
    return GuestSession.fromJson(json);
  }
}

/// @nodoc
const $GuestSession = _$GuestSessionTearOff();

/// @nodoc
mixin _$GuestSession {
  @JsonKey(name: 'guest_session_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
  DateTime get expiresAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuestSessionCopyWith<GuestSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuestSessionCopyWith<$Res> {
  factory $GuestSessionCopyWith(
          GuestSession value, $Res Function(GuestSession) then) =
      _$GuestSessionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'guest_session_id')
          String id,
      @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
          DateTime expiresAt});
}

/// @nodoc
class _$GuestSessionCopyWithImpl<$Res> implements $GuestSessionCopyWith<$Res> {
  _$GuestSessionCopyWithImpl(this._value, this._then);

  final GuestSession _value;
  // ignore: unused_field
  final $Res Function(GuestSession) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$GuestSessionCopyWith<$Res>
    implements $GuestSessionCopyWith<$Res> {
  factory _$GuestSessionCopyWith(
          _GuestSession value, $Res Function(_GuestSession) then) =
      __$GuestSessionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'guest_session_id')
          String id,
      @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
          DateTime expiresAt});
}

/// @nodoc
class __$GuestSessionCopyWithImpl<$Res> extends _$GuestSessionCopyWithImpl<$Res>
    implements _$GuestSessionCopyWith<$Res> {
  __$GuestSessionCopyWithImpl(
      _GuestSession _value, $Res Function(_GuestSession) _then)
      : super(_value, (v) => _then(v as _GuestSession));

  @override
  _GuestSession get _value => super._value as _GuestSession;

  @override
  $Res call({
    Object? id = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(_GuestSession(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: expiresAt == freezed
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GuestSession implements _GuestSession {
  const _$_GuestSession(
      {@JsonKey(name: 'guest_session_id')
          required this.id,
      @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
          required this.expiresAt});

  factory _$_GuestSession.fromJson(Map<String, dynamic> json) =>
      _$$_GuestSessionFromJson(json);

  @override
  @JsonKey(name: 'guest_session_id')
  final String id;
  @override
  @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
  final DateTime expiresAt;

  @override
  String toString() {
    return 'GuestSession(id: $id, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GuestSession &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.expiresAt, expiresAt) ||
                const DeepCollectionEquality()
                    .equals(other.expiresAt, expiresAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(expiresAt);

  @JsonKey(ignore: true)
  @override
  _$GuestSessionCopyWith<_GuestSession> get copyWith =>
      __$GuestSessionCopyWithImpl<_GuestSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GuestSessionToJson(this);
  }
}

abstract class _GuestSession implements GuestSession {
  const factory _GuestSession(
      {@JsonKey(name: 'guest_session_id')
          required String id,
      @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
          required DateTime expiresAt}) = _$_GuestSession;

  factory _GuestSession.fromJson(Map<String, dynamic> json) =
      _$_GuestSession.fromJson;

  @override
  @JsonKey(name: 'guest_session_id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expires_at', fromJson: toDateTime, toJson: fromDateTime)
  DateTime get expiresAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GuestSessionCopyWith<_GuestSession> get copyWith =>
      throw _privateConstructorUsedError;
}
