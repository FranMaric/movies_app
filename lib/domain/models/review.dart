import 'package:freezed_annotation/freezed_annotation.dart';

part 'review.freezed.dart';
part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String author,
    @JsonKey(name: 'author_details') required AuthorDetails authorDetails,
    required String content,
    @JsonKey(name: 'created_at') required String createdAt,
    required String id,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required String url,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}

@freezed
class AuthorDetails with _$AuthorDetails {
  const factory AuthorDetails({
    required String name,
    required String username,
    @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl) String? avatarPath,
    double? rating,
  }) = _AuthorDetails;

  factory AuthorDetails.fromJson(Map<String, dynamic> json) => _$AuthorDetailsFromJson(json);
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
