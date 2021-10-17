import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/genre.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  const factory MovieDetails({
    required int id,
    required int budget,
    required bool adult,
    @JsonKey(name: 'backdrop_path') String? backdropPath,
    required String title,
    @JsonKey(name: 'original_title') required String originalTitle,
    @JsonKey(name: 'original_language') required String originalLanguage,
    required String homepage,
    required List<Genre> genres,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, dynamic> json) => _$MovieDetailsFromJson(json);
}
