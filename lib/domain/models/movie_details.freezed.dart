// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDetails _$MovieDetailsFromJson(Map<String, dynamic> json) {
  return _MovieDetails.fromJson(json);
}

/// @nodoc
class _$MovieDetailsTearOff {
  const _$MovieDetailsTearOff();

  _MovieDetails call(
      {required int id,
      required int budget,
      int? runtime,
      required double popularity,
      required bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required String title,
      String? overview,
      String? tagline,
      @JsonKey(name: 'original_title') required String originalTitle,
      @JsonKey(name: 'original_language') required String originalLanguage,
      required String homepage,
      required List<Genre> genres}) {
    return _MovieDetails(
      id: id,
      budget: budget,
      runtime: runtime,
      popularity: popularity,
      adult: adult,
      backdropPath: backdropPath,
      title: title,
      overview: overview,
      tagline: tagline,
      originalTitle: originalTitle,
      originalLanguage: originalLanguage,
      homepage: homepage,
      genres: genres,
    );
  }

  MovieDetails fromJson(Map<String, Object> json) {
    return MovieDetails.fromJson(json);
  }
}

/// @nodoc
const $MovieDetails = _$MovieDetailsTearOff();

/// @nodoc
mixin _$MovieDetails {
  int get id => throw _privateConstructorUsedError;
  int get budget => throw _privateConstructorUsedError;
  int? get runtime => throw _privateConstructorUsedError;
  double get popularity => throw _privateConstructorUsedError;
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get overview => throw _privateConstructorUsedError;
  String? get tagline => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  String get homepage => throw _privateConstructorUsedError;
  List<Genre> get genres => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsCopyWith<MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsCopyWith<$Res> {
  factory $MovieDetailsCopyWith(
          MovieDetails value, $Res Function(MovieDetails) then) =
      _$MovieDetailsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int budget,
      int? runtime,
      double popularity,
      bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      String title,
      String? overview,
      String? tagline,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String homepage,
      List<Genre> genres});
}

/// @nodoc
class _$MovieDetailsCopyWithImpl<$Res> implements $MovieDetailsCopyWith<$Res> {
  _$MovieDetailsCopyWithImpl(this._value, this._then);

  final MovieDetails _value;
  // ignore: unused_field
  final $Res Function(MovieDetails) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? budget = freezed,
    Object? runtime = freezed,
    Object? popularity = freezed,
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? tagline = freezed,
    Object? originalTitle = freezed,
    Object? originalLanguage = freezed,
    Object? homepage = freezed,
    Object? genres = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
abstract class _$MovieDetailsCopyWith<$Res>
    implements $MovieDetailsCopyWith<$Res> {
  factory _$MovieDetailsCopyWith(
          _MovieDetails value, $Res Function(_MovieDetails) then) =
      __$MovieDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int budget,
      int? runtime,
      double popularity,
      bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      String title,
      String? overview,
      String? tagline,
      @JsonKey(name: 'original_title') String originalTitle,
      @JsonKey(name: 'original_language') String originalLanguage,
      String homepage,
      List<Genre> genres});
}

/// @nodoc
class __$MovieDetailsCopyWithImpl<$Res> extends _$MovieDetailsCopyWithImpl<$Res>
    implements _$MovieDetailsCopyWith<$Res> {
  __$MovieDetailsCopyWithImpl(
      _MovieDetails _value, $Res Function(_MovieDetails) _then)
      : super(_value, (v) => _then(v as _MovieDetails));

  @override
  _MovieDetails get _value => super._value as _MovieDetails;

  @override
  $Res call({
    Object? id = freezed,
    Object? budget = freezed,
    Object? runtime = freezed,
    Object? popularity = freezed,
    Object? adult = freezed,
    Object? backdropPath = freezed,
    Object? title = freezed,
    Object? overview = freezed,
    Object? tagline = freezed,
    Object? originalTitle = freezed,
    Object? originalLanguage = freezed,
    Object? homepage = freezed,
    Object? genres = freezed,
  }) {
    return _then(_MovieDetails(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      budget: budget == freezed
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as int,
      runtime: runtime == freezed
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int?,
      popularity: popularity == freezed
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      adult: adult == freezed
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      tagline: tagline == freezed
          ? _value.tagline
          : tagline // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      originalLanguage: originalLanguage == freezed
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      homepage: homepage == freezed
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String,
      genres: genres == freezed
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieDetails implements _MovieDetails {
  const _$_MovieDetails(
      {required this.id,
      required this.budget,
      this.runtime,
      required this.popularity,
      required this.adult,
      @JsonKey(name: 'backdrop_path') this.backdropPath,
      required this.title,
      this.overview,
      this.tagline,
      @JsonKey(name: 'original_title') required this.originalTitle,
      @JsonKey(name: 'original_language') required this.originalLanguage,
      required this.homepage,
      required this.genres});

  factory _$_MovieDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDetailsFromJson(json);

  @override
  final int id;
  @override
  final int budget;
  @override
  final int? runtime;
  @override
  final double popularity;
  @override
  final bool adult;
  @override
  @JsonKey(name: 'backdrop_path')
  final String? backdropPath;
  @override
  final String title;
  @override
  final String? overview;
  @override
  final String? tagline;
  @override
  @JsonKey(name: 'original_title')
  final String originalTitle;
  @override
  @JsonKey(name: 'original_language')
  final String originalLanguage;
  @override
  final String homepage;
  @override
  final List<Genre> genres;

  @override
  String toString() {
    return 'MovieDetails(id: $id, budget: $budget, runtime: $runtime, popularity: $popularity, adult: $adult, backdropPath: $backdropPath, title: $title, overview: $overview, tagline: $tagline, originalTitle: $originalTitle, originalLanguage: $originalLanguage, homepage: $homepage, genres: $genres)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MovieDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.runtime, runtime) ||
                const DeepCollectionEquality()
                    .equals(other.runtime, runtime)) &&
            (identical(other.popularity, popularity) ||
                const DeepCollectionEquality()
                    .equals(other.popularity, popularity)) &&
            (identical(other.adult, adult) ||
                const DeepCollectionEquality().equals(other.adult, adult)) &&
            (identical(other.backdropPath, backdropPath) ||
                const DeepCollectionEquality()
                    .equals(other.backdropPath, backdropPath)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.overview, overview) ||
                const DeepCollectionEquality()
                    .equals(other.overview, overview)) &&
            (identical(other.tagline, tagline) ||
                const DeepCollectionEquality()
                    .equals(other.tagline, tagline)) &&
            (identical(other.originalTitle, originalTitle) ||
                const DeepCollectionEquality()
                    .equals(other.originalTitle, originalTitle)) &&
            (identical(other.originalLanguage, originalLanguage) ||
                const DeepCollectionEquality()
                    .equals(other.originalLanguage, originalLanguage)) &&
            (identical(other.homepage, homepage) ||
                const DeepCollectionEquality()
                    .equals(other.homepage, homepage)) &&
            (identical(other.genres, genres) ||
                const DeepCollectionEquality().equals(other.genres, genres)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(runtime) ^
      const DeepCollectionEquality().hash(popularity) ^
      const DeepCollectionEquality().hash(adult) ^
      const DeepCollectionEquality().hash(backdropPath) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(overview) ^
      const DeepCollectionEquality().hash(tagline) ^
      const DeepCollectionEquality().hash(originalTitle) ^
      const DeepCollectionEquality().hash(originalLanguage) ^
      const DeepCollectionEquality().hash(homepage) ^
      const DeepCollectionEquality().hash(genres);

  @JsonKey(ignore: true)
  @override
  _$MovieDetailsCopyWith<_MovieDetails> get copyWith =>
      __$MovieDetailsCopyWithImpl<_MovieDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDetailsToJson(this);
  }
}

abstract class _MovieDetails implements MovieDetails {
  const factory _MovieDetails(
      {required int id,
      required int budget,
      int? runtime,
      required double popularity,
      required bool adult,
      @JsonKey(name: 'backdrop_path') String? backdropPath,
      required String title,
      String? overview,
      String? tagline,
      @JsonKey(name: 'original_title') required String originalTitle,
      @JsonKey(name: 'original_language') required String originalLanguage,
      required String homepage,
      required List<Genre> genres}) = _$_MovieDetails;

  factory _MovieDetails.fromJson(Map<String, dynamic> json) =
      _$_MovieDetails.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get budget => throw _privateConstructorUsedError;
  @override
  int? get runtime => throw _privateConstructorUsedError;
  @override
  double get popularity => throw _privateConstructorUsedError;
  @override
  bool get adult => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'backdrop_path')
  String? get backdropPath => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get overview => throw _privateConstructorUsedError;
  @override
  String? get tagline => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original_title')
  String get originalTitle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original_language')
  String get originalLanguage => throw _privateConstructorUsedError;
  @override
  String get homepage => throw _privateConstructorUsedError;
  @override
  List<Genre> get genres => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MovieDetailsCopyWith<_MovieDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
