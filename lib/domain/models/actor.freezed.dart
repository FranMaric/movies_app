// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return _Actor.fromJson(json);
}

/// @nodoc
class _$ActorTearOff {
  const _$ActorTearOff();

  _Actor call(
      {required bool adult,
      required int? gender,
      required int id,
      required String name,
      required String character,
      required double popularity,
      @JsonKey(name: 'known_for_department') required String knownForDepartment,
      @JsonKey(name: 'original_name') required String originalName,
      @JsonKey(name: 'profile_path') required String profilePath}) {
    return _Actor(
      adult: adult,
      gender: gender,
      id: id,
      name: name,
      character: character,
      popularity: popularity,
      knownForDepartment: knownForDepartment,
      originalName: originalName,
      profilePath: profilePath,
    );
  }

  Actor fromJson(Map<String, Object> json) {
    return Actor.fromJson(json);
  }
}

/// @nodoc
const $Actor = _$ActorTearOff();

/// @nodoc
mixin _$Actor {
  bool get adult => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get character => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_path')
  String get profilePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorCopyWith<Actor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorCopyWith<$Res> {
  factory $ActorCopyWith(Actor value, $Res Function(Actor) then) =
      _$ActorCopyWithImpl<$Res>;
  $Res call(
      {bool adult,
      int? gender,
      int id,
      String name,
      String character,
      double popularity,
      @JsonKey(name: 'known_for_department') String knownForDepartment,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'profile_path') String profilePath});
}

/// @nodoc
class _$ActorCopyWithImpl<$Res> implements $ActorCopyWith<$Res> {
  _$ActorCopyWithImpl(this._value, this._then);

  final Actor _value;
  // ignore: unused_field
  final $Res Function(Actor) _then;

  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? popularity = freezed,
    Object? knownForDepartment = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_value.copyWith(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActorCopyWith<$Res> implements $ActorCopyWith<$Res> {
  factory _$ActorCopyWith(_Actor value, $Res Function(_Actor) then) =
      __$ActorCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adult,
      int? gender,
      int id,
      String name,
      String character,
      double popularity,
      @JsonKey(name: 'known_for_department') String knownForDepartment,
      @JsonKey(name: 'original_name') String originalName,
      @JsonKey(name: 'profile_path') String profilePath});
}

/// @nodoc
class __$ActorCopyWithImpl<$Res> extends _$ActorCopyWithImpl<$Res>
    implements _$ActorCopyWith<$Res> {
  __$ActorCopyWithImpl(_Actor _value, $Res Function(_Actor) _then)
      : super(_value, (v) => _then(v as _Actor));

  @override
  _Actor get _value => super._value as _Actor;

  @override
  $Res call({
    Object? adult = freezed,
    Object? gender = freezed,
    Object? id = freezed,
    Object? name = freezed,
    Object? character = freezed,
    Object? popularity = freezed,
    Object? knownForDepartment = freezed,
    Object? originalName = freezed,
    Object? profilePath = freezed,
  }) {
    return _then(_Actor(
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      character: character == freezed
          ? _value.character
          : character // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      profilePath: profilePath == freezed
          ? _value.profilePath
          : profilePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Actor implements _Actor {
  const _$_Actor(
      {required this.adult,
      required this.gender,
      required this.id,
      required this.name,
      required this.character,
      required this.popularity,
      @JsonKey(name: 'known_for_department') required this.knownForDepartment,
      @JsonKey(name: 'original_name') required this.originalName,
      @JsonKey(name: 'profile_path') required this.profilePath});

  factory _$_Actor.fromJson(Map<String, dynamic> json) =>
      _$$_ActorFromJson(json);

  @override
  final bool adult;
  @override
  final int? gender;
  @override
  final int id;
  @override
  final String name;
  @override
  final String character;
  @override
  final double popularity;
  @override
  @JsonKey(name: 'known_for_department')
  final String knownForDepartment;
  @override
  @JsonKey(name: 'original_name')
  final String originalName;
  @override
  @JsonKey(name: 'profile_path')
  final String profilePath;

  @override
  String toString() {
    return 'Actor(adult: $adult, gender: $gender, id: $id, name: $name, character: $character, popularity: $popularity, knownForDepartment: $knownForDepartment, originalName: $originalName, profilePath: $profilePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Actor &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.character, character) ||
                const DeepCollectionEquality()
                    .equals(other.character, character)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                const DeepCollectionEquality()
                    .equals(other.knownForDepartment, knownForDepartment)) &&
            (identical(other.originalName, originalName) ||
                const DeepCollectionEquality()
                    .equals(other.originalName, originalName)) &&
            (identical(other.profilePath, profilePath) ||
                const DeepCollectionEquality()
                    .equals(other.profilePath, profilePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(character) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(knownForDepartment) ^
      const DeepCollectionEquality().hash(originalName) ^
      const DeepCollectionEquality().hash(profilePath);

  @JsonKey(ignore: true)
  @override
  _$ActorCopyWith<_Actor> get copyWith =>
      __$ActorCopyWithImpl<_Actor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorToJson(this);
  }
}

abstract class _Actor implements Actor {
  const factory _Actor(
      {required bool adult,
      required int? gender,
      required int id,
      required String name,
      required String character,
      required double popularity,
      @JsonKey(name: 'known_for_department') required String knownForDepartment,
      @JsonKey(name: 'original_name') required String originalName,
      @JsonKey(name: 'profile_path') required String profilePath}) = _$_Actor;

  factory _Actor.fromJson(Map<String, dynamic> json) = _$_Actor.fromJson;

  @override
  bool get adult => throw _privateConstructorUsedError;
  @override
  int? get gender => throw _privateConstructorUsedError;
  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get character => throw _privateConstructorUsedError;
  @override
  double get popularity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original_name')
  String get originalName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'profile_path')
  String get profilePath => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActorCopyWith<_Actor> get copyWith => throw _privateConstructorUsedError;
}
