// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieImages _$MovieImagesFromJson(Map<String, dynamic> json) {
  return _MovieImages.fromJson(json);
}

/// @nodoc
class _$MovieImagesTearOff {
  const _$MovieImagesTearOff();

  _MovieImages call(
      {required int id,
      required List<ApiImage> backdrops,
      required List<ApiImage> posters}) {
    return _MovieImages(
      id: id,
      backdrops: backdrops,
      posters: posters,
    );
  }

  MovieImages fromJson(Map<String, Object> json) {
    return MovieImages.fromJson(json);
  }
}

/// @nodoc
const $MovieImages = _$MovieImagesTearOff();

/// @nodoc
mixin _$MovieImages {
  int get id => throw _privateConstructorUsedError;
  List<ApiImage> get backdrops => throw _privateConstructorUsedError;
  List<ApiImage> get posters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieImagesCopyWith<MovieImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieImagesCopyWith<$Res> {
  factory $MovieImagesCopyWith(
          MovieImages value, $Res Function(MovieImages) then) =
      _$MovieImagesCopyWithImpl<$Res>;
  $Res call({int id, List<ApiImage> backdrops, List<ApiImage> posters});
}

/// @nodoc
class _$MovieImagesCopyWithImpl<$Res> implements $MovieImagesCopyWith<$Res> {
  _$MovieImagesCopyWithImpl(this._value, this._then);

  final MovieImages _value;
  // ignore: unused_field
  final $Res Function(MovieImages) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? backdrops = freezed,
    Object? posters = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
      posters: posters == freezed
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
    ));
  }
}

/// @nodoc
abstract class _$MovieImagesCopyWith<$Res>
    implements $MovieImagesCopyWith<$Res> {
  factory _$MovieImagesCopyWith(
          _MovieImages value, $Res Function(_MovieImages) then) =
      __$MovieImagesCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<ApiImage> backdrops, List<ApiImage> posters});
}

/// @nodoc
class __$MovieImagesCopyWithImpl<$Res> extends _$MovieImagesCopyWithImpl<$Res>
    implements _$MovieImagesCopyWith<$Res> {
  __$MovieImagesCopyWithImpl(
      _MovieImages _value, $Res Function(_MovieImages) _then)
      : super(_value, (v) => _then(v as _MovieImages));

  @override
  _MovieImages get _value => super._value as _MovieImages;

  @override
  $Res call({
    Object? id = freezed,
    Object? backdrops = freezed,
    Object? posters = freezed,
  }) {
    return _then(_MovieImages(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
      posters: posters == freezed
          ? _value.posters
          : posters // ignore: cast_nullable_to_non_nullable
              as List<ApiImage>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieImages implements _MovieImages {
  const _$_MovieImages(
      {required this.id, required this.backdrops, required this.posters});

  factory _$_MovieImages.fromJson(Map<String, dynamic> json) =>
      _$$_MovieImagesFromJson(json);

  @override
  final int id;
  @override
  final List<ApiImage> backdrops;
  @override
  final List<ApiImage> posters;

  @override
  String toString() {
    return 'MovieImages(id: $id, backdrops: $backdrops, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieImages &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.backdrops, backdrops) ||
                const DeepCollectionEquality()
                    .equals(other.backdrops, backdrops)) &&
            (identical(other.posters, posters) ||
                const DeepCollectionEquality().equals(other.posters, posters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(backdrops) ^
      const DeepCollectionEquality().hash(posters);

  @JsonKey(ignore: true)
  @override
  _$MovieImagesCopyWith<_MovieImages> get copyWith =>
      __$MovieImagesCopyWithImpl<_MovieImages>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieImagesToJson(this);
  }
}

abstract class _MovieImages implements MovieImages {
  const factory _MovieImages(
      {required int id,
      required List<ApiImage> backdrops,
      required List<ApiImage> posters}) = _$_MovieImages;

  factory _MovieImages.fromJson(Map<String, dynamic> json) =
      _$_MovieImages.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  List<ApiImage> get backdrops => throw _privateConstructorUsedError;
  @override
  List<ApiImage> get posters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieImagesCopyWith<_MovieImages> get copyWith =>
      throw _privateConstructorUsedError;
}
