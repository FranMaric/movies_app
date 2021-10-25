// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trailer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
class _$TrailerTearOff {
  const _$TrailerTearOff();

  _Trailer call(
      {required String name,
      required String key,
      required String site,
      required String type,
      required bool official}) {
    return _Trailer(
      name: name,
      key: key,
      site: site,
      type: type,
      official: official,
    );
  }

  Trailer fromJson(Map<String, Object> json) {
    return Trailer.fromJson(json);
  }
}

/// @nodoc
const $Trailer = _$TrailerTearOff();

/// @nodoc
mixin _$Trailer {
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get site => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  bool get official => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res>;
  $Res call({String name, String key, String site, String type, bool official});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res> implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  final Trailer _value;
  // ignore: unused_field
  final $Res Function(Trailer) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? type = freezed,
    Object? official = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      official: official == freezed
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TrailerCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$TrailerCopyWith(_Trailer value, $Res Function(_Trailer) then) =
      __$TrailerCopyWithImpl<$Res>;
  @override
  $Res call({String name, String key, String site, String type, bool official});
}

/// @nodoc
class __$TrailerCopyWithImpl<$Res> extends _$TrailerCopyWithImpl<$Res>
    implements _$TrailerCopyWith<$Res> {
  __$TrailerCopyWithImpl(_Trailer _value, $Res Function(_Trailer) _then)
      : super(_value, (v) => _then(v as _Trailer));

  @override
  _Trailer get _value => super._value as _Trailer;

  @override
  $Res call({
    Object? name = freezed,
    Object? key = freezed,
    Object? site = freezed,
    Object? type = freezed,
    Object? official = freezed,
  }) {
    return _then(_Trailer(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      site: site == freezed
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      official: official == freezed
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trailer implements _Trailer {
  const _$_Trailer(
      {required this.name,
      required this.key,
      required this.site,
      required this.type,
      required this.official});

  factory _$_Trailer.fromJson(Map<String, dynamic> json) =>
      _$$_TrailerFromJson(json);

  @override
  final String name;
  @override
  final String key;
  @override
  final String site;
  @override
  final String type;
  @override
  final bool official;

  @override
  String toString() {
    return 'Trailer(name: $name, key: $key, site: $site, type: $type, official: $official)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trailer &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.site, site) ||
                const DeepCollectionEquality().equals(other.site, site)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.official, official) ||
                const DeepCollectionEquality()
                    .equals(other.official, official)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(site) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(official);

  @JsonKey(ignore: true)
  @override
  _$TrailerCopyWith<_Trailer> get copyWith =>
      __$TrailerCopyWithImpl<_Trailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailerToJson(this);
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {required String name,
      required String key,
      required String site,
      required String type,
      required bool official}) = _$_Trailer;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$_Trailer.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get site => throw _privateConstructorUsedError;
  @override
  String get type => throw _privateConstructorUsedError;
  @override
  bool get official => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrailerCopyWith<_Trailer> get copyWith =>
      throw _privateConstructorUsedError;
}
