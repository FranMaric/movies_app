import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_image.freezed.dart';
part 'api_image.g.dart';

@freezed
class ApiImage with _$ApiImage {
  const factory ApiImage({
    @JsonKey(name: 'aspect_ratio') required double aspectRatio,
    @JsonKey(name: 'file_path') required String filePath,
    required int height,
    required int width,
    @JsonKey(name: 'vote_average') required int voteAverage,
    @JsonKey(name: 'vote_count') required int voteCount,
  }) = _ApiImage;

  factory ApiImage.fromJson(Map<String, dynamic> json) => _$ApiImageFromJson(json);
}
