import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_credit.freezed.dart';
part 'actor_credit.g.dart';

@freezed
class ActorCredit with _$ActorCredit {
  const factory ActorCredit({
    required int id,
    required String character,
    required String title,
    @JsonKey(name: 'backdrop_path', fromJson: toUrl, toJson: fromUrl) String? backdropPath,
    @JsonKey(name: 'poster_path', fromJson: toUrl, toJson: fromUrl) String? posterPath,
  }) = _ActorCredit;

  factory ActorCredit.fromJson(Map<String, dynamic> json) => _$ActorCreditFromJson(json);
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
