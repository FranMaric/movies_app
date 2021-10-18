// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiImage _$ApiImageFromJson(Map<String, dynamic> json) {
  return _ApiImage.fromJson(json);
}

/// @nodoc
class _$ApiImageTearOff {
  const _$ApiImageTearOff();

  _ApiImage call(
      {@JsonKey(name: 'aspect_ratio') required double aspectRatio,
      @JsonKey(name: 'file_path') required String filePath,
      required int height,
      required int width,
      @JsonKey(name: 'vote_average') required int voteAverage,
      @JsonKey(name: 'vote_count') required int voteCount}) {
    return _ApiImage(
      aspectRatio: aspectRatio,
      filePath: filePath,
      height: height,
      width: width,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }

  ApiImage fromJson(Map<String, Object> json) {
    return ApiImage.fromJson(json);
  }
}

/// @nodoc
const $ApiImage = _$ApiImageTearOff();

/// @nodoc
mixin _$ApiImage {
  @JsonKey(name: 'aspect_ratio')
  double get aspectRatio => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_path')
  String get filePath => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_average')
  int get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiImageCopyWith<ApiImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiImageCopyWith<$Res> {
  factory $ApiImageCopyWith(ApiImage value, $Res Function(ApiImage) then) =
      _$ApiImageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double aspectRatio,
      @JsonKey(name: 'file_path') String filePath,
      int height,
      int width,
      @JsonKey(name: 'vote_average') int voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class _$ApiImageCopyWithImpl<$Res> implements $ApiImageCopyWith<$Res> {
  _$ApiImageCopyWithImpl(this._value, this._then);

  final ApiImage _value;
  // ignore: unused_field
  final $Res Function(ApiImage) _then;

  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? filePath = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_value.copyWith(
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as int,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ApiImageCopyWith<$Res> implements $ApiImageCopyWith<$Res> {
  factory _$ApiImageCopyWith(_ApiImage value, $Res Function(_ApiImage) then) =
      __$ApiImageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'aspect_ratio') double aspectRatio,
      @JsonKey(name: 'file_path') String filePath,
      int height,
      int width,
      @JsonKey(name: 'vote_average') int voteAverage,
      @JsonKey(name: 'vote_count') int voteCount});
}

/// @nodoc
class __$ApiImageCopyWithImpl<$Res> extends _$ApiImageCopyWithImpl<$Res>
    implements _$ApiImageCopyWith<$Res> {
  __$ApiImageCopyWithImpl(_ApiImage _value, $Res Function(_ApiImage) _then)
      : super(_value, (v) => _then(v as _ApiImage));

  @override
  _ApiImage get _value => super._value as _ApiImage;

  @override
  $Res call({
    Object? aspectRatio = freezed,
    Object? filePath = freezed,
    Object? height = freezed,
    Object? width = freezed,
    Object? voteAverage = freezed,
    Object? voteCount = freezed,
  }) {
    return _then(_ApiImage(
      aspectRatio: aspectRatio == freezed
          ? _value.aspectRatio
          : aspectRatio // ignore: cast_nullable_to_non_nullable
              as double,
      filePath: filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      voteAverage: voteAverage == freezed
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as int,
      voteCount: voteCount == freezed
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiImage implements _ApiImage {
  const _$_ApiImage(
      {@JsonKey(name: 'aspect_ratio') required this.aspectRatio,
      @JsonKey(name: 'file_path') required this.filePath,
      required this.height,
      required this.width,
      @JsonKey(name: 'vote_average') required this.voteAverage,
      @JsonKey(name: 'vote_count') required this.voteCount});

  factory _$_ApiImage.fromJson(Map<String, dynamic> json) =>
      _$$_ApiImageFromJson(json);

  @override
  @JsonKey(name: 'aspect_ratio')
  final double aspectRatio;
  @override
  @JsonKey(name: 'file_path')
  final String filePath;
  @override
  final int height;
  @override
  final int width;
  @override
  @JsonKey(name: 'vote_average')
  final int voteAverage;
  @override
  @JsonKey(name: 'vote_count')
  final int voteCount;

  @override
  String toString() {
    return 'ApiImage(aspectRatio: $aspectRatio, filePath: $filePath, height: $height, width: $width, voteAverage: $voteAverage, voteCount: $voteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiImage &&
            (identical(other.aspectRatio, aspectRatio) ||
                const DeepCollectionEquality()
                    .equals(other.aspectRatio, aspectRatio)) &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.voteAverage, voteAverage) ||
                const DeepCollectionEquality()
                    .equals(other.voteAverage, voteAverage)) &&
            (identical(other.voteCount, voteCount) ||
                const DeepCollectionEquality()
                    .equals(other.voteCount, voteCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(aspectRatio) ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(voteAverage) ^
      const DeepCollectionEquality().hash(voteCount);

  @JsonKey(ignore: true)
  @override
  _$ApiImageCopyWith<_ApiImage> get copyWith =>
      __$ApiImageCopyWithImpl<_ApiImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiImageToJson(this);
  }
}

abstract class _ApiImage implements ApiImage {
  const factory _ApiImage(
      {@JsonKey(name: 'aspect_ratio') required double aspectRatio,
      @JsonKey(name: 'file_path') required String filePath,
      required int height,
      required int width,
      @JsonKey(name: 'vote_average') required int voteAverage,
      @JsonKey(name: 'vote_count') required int voteCount}) = _$_ApiImage;

  factory _ApiImage.fromJson(Map<String, dynamic> json) = _$_ApiImage.fromJson;

  @override
  @JsonKey(name: 'aspect_ratio')
  double get aspectRatio => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'file_path')
  String get filePath => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_average')
  int get voteAverage => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vote_count')
  int get voteCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiImageCopyWith<_ApiImage> get copyWith =>
      throw _privateConstructorUsedError;
}
