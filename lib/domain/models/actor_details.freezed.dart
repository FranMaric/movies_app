// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actor_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorDetails _$ActorDetailsFromJson(Map<String, dynamic> json) {
  return _ActorDetails.fromJson(json);
}

/// @nodoc
class _$ActorDetailsTearOff {
  const _$ActorDetailsTearOff();

  _ActorDetails call(
      {required int id,
      String? birthday,
      @JsonKey(name: 'known_for_department') required String knownForDepartment,
      @JsonKey(name: 'also_known_as') required List<String> alsoKnownAs,
      required String biography}) {
    return _ActorDetails(
      id: id,
      birthday: birthday,
      knownForDepartment: knownForDepartment,
      alsoKnownAs: alsoKnownAs,
      biography: biography,
    );
  }

  ActorDetails fromJson(Map<String, Object> json) {
    return ActorDetails.fromJson(json);
  }
}

/// @nodoc
const $ActorDetails = _$ActorDetailsTearOff();

/// @nodoc
mixin _$ActorDetails {
  int get id => throw _privateConstructorUsedError;
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment => throw _privateConstructorUsedError;
  @JsonKey(name: 'also_known_as')
  List<String> get alsoKnownAs => throw _privateConstructorUsedError;
  String get biography => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorDetailsCopyWith<ActorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorDetailsCopyWith<$Res> {
  factory $ActorDetailsCopyWith(
          ActorDetails value, $Res Function(ActorDetails) then) =
      _$ActorDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? birthday,
      @JsonKey(name: 'known_for_department') String knownForDepartment,
      @JsonKey(name: 'also_known_as') List<String> alsoKnownAs,
      String biography});
}

/// @nodoc
class _$ActorDetailsCopyWithImpl<$Res> implements $ActorDetailsCopyWith<$Res> {
  _$ActorDetailsCopyWithImpl(this._value, this._then);

  final ActorDetails _value;
  // ignore: unused_field
  final $Res Function(ActorDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? birthday = freezed,
    Object? knownForDepartment = freezed,
    Object? alsoKnownAs = freezed,
    Object? biography = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      alsoKnownAs: alsoKnownAs == freezed
          ? _value.alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biography: biography == freezed
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ActorDetailsCopyWith<$Res>
    implements $ActorDetailsCopyWith<$Res> {
  factory _$ActorDetailsCopyWith(
          _ActorDetails value, $Res Function(_ActorDetails) then) =
      __$ActorDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? birthday,
      @JsonKey(name: 'known_for_department') String knownForDepartment,
      @JsonKey(name: 'also_known_as') List<String> alsoKnownAs,
      String biography});
}

/// @nodoc
class __$ActorDetailsCopyWithImpl<$Res> extends _$ActorDetailsCopyWithImpl<$Res>
    implements _$ActorDetailsCopyWith<$Res> {
  __$ActorDetailsCopyWithImpl(
      _ActorDetails _value, $Res Function(_ActorDetails) _then)
      : super(_value, (v) => _then(v as _ActorDetails));

  @override
  _ActorDetails get _value => super._value as _ActorDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? birthday = freezed,
    Object? knownForDepartment = freezed,
    Object? alsoKnownAs = freezed,
    Object? biography = freezed,
  }) {
    return _then(_ActorDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      knownForDepartment: knownForDepartment == freezed
          ? _value.knownForDepartment
          : knownForDepartment // ignore: cast_nullable_to_non_nullable
              as String,
      alsoKnownAs: alsoKnownAs == freezed
          ? _value.alsoKnownAs
          : alsoKnownAs // ignore: cast_nullable_to_non_nullable
              as List<String>,
      biography: biography == freezed
          ? _value.biography
          : biography // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorDetails implements _ActorDetails {
  const _$_ActorDetails(
      {required this.id,
      this.birthday,
      @JsonKey(name: 'known_for_department') required this.knownForDepartment,
      @JsonKey(name: 'also_known_as') required this.alsoKnownAs,
      required this.biography});

  factory _$_ActorDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ActorDetailsFromJson(json);

  @override
  final int id;
  @override
  final String? birthday;
  @override
  @JsonKey(name: 'known_for_department')
  final String knownForDepartment;
  @override
  @JsonKey(name: 'also_known_as')
  final List<String> alsoKnownAs;
  @override
  final String biography;

  @override
  String toString() {
    return 'ActorDetails(id: $id, birthday: $birthday, knownForDepartment: $knownForDepartment, alsoKnownAs: $alsoKnownAs, biography: $biography)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActorDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.birthday, birthday) ||
                const DeepCollectionEquality()
                    .equals(other.birthday, birthday)) &&
            (identical(other.knownForDepartment, knownForDepartment) ||
                const DeepCollectionEquality()
                    .equals(other.knownForDepartment, knownForDepartment)) &&
            (identical(other.alsoKnownAs, alsoKnownAs) ||
                const DeepCollectionEquality()
                    .equals(other.alsoKnownAs, alsoKnownAs)) &&
            (identical(other.biography, biography) ||
                const DeepCollectionEquality()
                    .equals(other.biography, biography)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(birthday) ^
      const DeepCollectionEquality().hash(knownForDepartment) ^
      const DeepCollectionEquality().hash(alsoKnownAs) ^
      const DeepCollectionEquality().hash(biography);

  @JsonKey(ignore: true)
  @override
  _$ActorDetailsCopyWith<_ActorDetails> get copyWith =>
      __$ActorDetailsCopyWithImpl<_ActorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorDetailsToJson(this);
  }
}

abstract class _ActorDetails implements ActorDetails {
  const factory _ActorDetails(
      {required int id,
      String? birthday,
      @JsonKey(name: 'known_for_department') required String knownForDepartment,
      @JsonKey(name: 'also_known_as') required List<String> alsoKnownAs,
      required String biography}) = _$_ActorDetails;

  factory _ActorDetails.fromJson(Map<String, dynamic> json) =
      _$_ActorDetails.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get birthday => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'known_for_department')
  String get knownForDepartment => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'also_known_as')
  List<String> get alsoKnownAs => throw _privateConstructorUsedError;
  @override
  String get biography => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActorDetailsCopyWith<_ActorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
