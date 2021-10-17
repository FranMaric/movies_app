// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieCredits _$MovieCreditsFromJson(Map<String, dynamic> json) {
  return _MovieCredits.fromJson(json);
}

/// @nodoc
class _$MovieCreditsTearOff {
  const _$MovieCreditsTearOff();

  _MovieCredits call({required int id, required List<Actor> cast}) {
    return _MovieCredits(
      id: id,
      cast: cast,
    );
  }

  MovieCredits fromJson(Map<String, Object> json) {
    return MovieCredits.fromJson(json);
  }
}

/// @nodoc
const $MovieCredits = _$MovieCreditsTearOff();

/// @nodoc
mixin _$MovieCredits {
  int get id => throw _privateConstructorUsedError;
  List<Actor> get cast => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCreditsCopyWith<MovieCredits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCreditsCopyWith<$Res> {
  factory $MovieCreditsCopyWith(
          MovieCredits value, $Res Function(MovieCredits) then) =
      _$MovieCreditsCopyWithImpl<$Res>;
  $Res call({int id, List<Actor> cast});
}

/// @nodoc
class _$MovieCreditsCopyWithImpl<$Res> implements $MovieCreditsCopyWith<$Res> {
  _$MovieCreditsCopyWithImpl(this._value, this._then);

  final MovieCredits _value;
  // ignore: unused_field
  final $Res Function(MovieCredits) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Actor>,
    ));
  }
}

/// @nodoc
abstract class _$MovieCreditsCopyWith<$Res>
    implements $MovieCreditsCopyWith<$Res> {
  factory _$MovieCreditsCopyWith(
          _MovieCredits value, $Res Function(_MovieCredits) then) =
      __$MovieCreditsCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<Actor> cast});
}

/// @nodoc
class __$MovieCreditsCopyWithImpl<$Res> extends _$MovieCreditsCopyWithImpl<$Res>
    implements _$MovieCreditsCopyWith<$Res> {
  __$MovieCreditsCopyWithImpl(
      _MovieCredits _value, $Res Function(_MovieCredits) _then)
      : super(_value, (v) => _then(v as _MovieCredits));

  @override
  _MovieCredits get _value => super._value as _MovieCredits;

  @override
  $Res call({
    Object? id = freezed,
    Object? cast = freezed,
  }) {
    return _then(_MovieCredits(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      cast: cast == freezed
          ? _value.cast
          : cast // ignore: cast_nullable_to_non_nullable
              as List<Actor>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieCredits implements _MovieCredits {
  const _$_MovieCredits({required this.id, required this.cast});

  factory _$_MovieCredits.fromJson(Map<String, dynamic> json) =>
      _$$_MovieCreditsFromJson(json);

  @override
  final int id;
  @override
  final List<Actor> cast;

  @override
  String toString() {
    return 'MovieCredits(id: $id, cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieCredits &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(cast);

  @JsonKey(ignore: true)
  @override
  _$MovieCreditsCopyWith<_MovieCredits> get copyWith =>
      __$MovieCreditsCopyWithImpl<_MovieCredits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieCreditsToJson(this);
  }
}

abstract class _MovieCredits implements MovieCredits {
  const factory _MovieCredits({required int id, required List<Actor> cast}) =
      _$_MovieCredits;

  factory _MovieCredits.fromJson(Map<String, dynamic> json) =
      _$_MovieCredits.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  List<Actor> get cast => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieCreditsCopyWith<_MovieCredits> get copyWith =>
      throw _privateConstructorUsedError;
}
