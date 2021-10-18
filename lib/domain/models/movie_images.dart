import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/api_image.dart';

part 'movie_images.freezed.dart';
part 'movie_images.g.dart';

@freezed
class MovieImages with _$MovieImages {
  const factory MovieImages({
    required int id,
    required List<ApiImage> backdrops,
    required List<ApiImage> posters,
  }) = _MovieImages;

  factory MovieImages.fromJson(Map<String, dynamic> json) => _$MovieImagesFromJson(json);
}
