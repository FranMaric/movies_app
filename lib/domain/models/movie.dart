import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
@immutable
class Movie with _$Movie {
  const factory Movie({
    required bool adult,
    required int id,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required String overview,
    required String title,
    @JsonKey(name: 'original_language') required String originalLanguage,
    @JsonKey(name: 'release_date') required String releaseDate,
    @JsonKey(name: 'vote_average') required double voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
