import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
@immutable
class Movie with _$Movie {
  const factory Movie({
    required int id,
    @JsonKey(name: 'backdrop_path') required String backdropPath,
    required String title,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
