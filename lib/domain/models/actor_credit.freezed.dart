// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor_credit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorCredit _$ActorCreditFromJson(Map<String, dynamic> json) {
  return _ActorCredit.fromJson(json);
}

/// @nodoc
class _$ActorCreditTearOff {
  const _$ActorCreditTearOff();

  _ActorCredit call(
      {required int id,
      required String character,
      required String title,
      @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
          String? backdropPath,
      @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
          String? posterPath}) {
    return _ActorCredit(
      id: id,
      character: character,
      title: title,
      backdropPath: backdropPath,
      posterPath: posterPath,
    );
  }

  ActorCredit fromJson(Map<String, Object> json) {
    return ActorCredit.fromJson(json);
  }
}

/// @nodoc
const $ActorCredit = _$ActorCreditTearOff();

/// @nodoc
mixin _$ActorCredit {
  int get id => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCreditCopyWith<ActorCredit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCreditCopyWith<$Res> {
  factory $ActorCreditCopyWith(
          ActorCredit value, $Res Function(ActorCredit) then) =
      _$ActorCreditCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String character,
      String title,
      @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
          String? backdropPath,
      @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
          String? posterPath});
}

/// @nodoc
class _$ActorCreditCopyWithImpl<$Res> implements $ActorCreditCopyWith<$Res> {
  _$ActorCreditCopyWithImpl(this._value, this._then);

  final ActorCredit _value;
  // ignore: unused_field
  final $Res Function(ActorCredit) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? character = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ActorCreditCopyWith<$Res>
    implements $ActorCreditCopyWith<$Res> {
  factory _$ActorCreditCopyWith(
          _ActorCredit value, $Res Function(_ActorCredit) then) =
      __$ActorCreditCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String character,
      String title,
      @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
          String? backdropPath,
      @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
          String? posterPath});
}

/// @nodoc
class __$ActorCreditCopyWithImpl<$Res> extends _$ActorCreditCopyWithImpl<$Res>
    implements _$ActorCreditCopyWith<$Res> {
  __$ActorCreditCopyWithImpl(
      _ActorCredit _value, $Res Function(_ActorCredit) _then)
      : super(_value, (v) => _then(v as _ActorCredit));

  @override
  _ActorCredit get _value => super._value as _ActorCredit;

  @override
  $Res call({
    Object? id = freezed,
    Object? character = freezed,
    Object? title = freezed,
    Object? backdropPath = freezed,
    Object? posterPath = freezed,
  }) {
    return _then(_ActorCredit(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorCredit implements _ActorCredit {
  const _$_ActorCredit(
      {required this.id,
      required this.character,
      required this.title,
      @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
          this.backdropPath,
      @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
          this.posterPath});

  factory _$_ActorCredit.fromJson(Map<String, dynamic> json) =>
      _$$_ActorCreditFromJson(json);

  @override
  final int id;
  @override
  final String character;
  @override
  final String title;
  @override
  @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
  final String? backdropPath;
  @override
  @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
  final String? posterPath;

  @override
  String toString() {
    return 'ActorCredit(id: $id, character: $character, title: $title, backdropPath: $backdropPath, posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorCredit &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.posterPath, posterPath) ||
                const DeepCollectionEquality()
                    .equals(other.posterPath, posterPath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(posterPath);

  @JsonKey(ignore: true)
  @override
  _$ActorCreditCopyWith<_ActorCredit> get copyWith =>
      __$ActorCreditCopyWithImpl<_ActorCredit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorCreditToJson(this);
  }
}

abstract class _ActorCredit implements ActorCredit {
  const factory _ActorCredit(
      {required int id,
      required String character,
      required String title,
      @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
          String? backdropPath,
      @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
          String? posterPath}) = _$_ActorCredit;

  factory _ActorCredit.fromJson(Map<String, dynamic> json) =
      _$_ActorCredit.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get character => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl)
  String? get backdropPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl)
  String? get posterPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActorCreditCopyWith<_ActorCredit> get copyWith =>
      throw _privateConstructorUsedError;
}
