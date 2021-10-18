import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    @JsonKey(
      name: 'backdrop_path',
      fromJson: toUrl,
      toJson: fromUrl,
    )
        String? backdropPath,
    required String title,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

String? toUrl(String? value) {
  if (value != null) {
    return 'https://image.tmdb.org/t/p/w500$value';
  }
}

String? fromUrl(String? value) {
  if (value != null) {
    return value.split('/').last;
  }
}
