import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/actor.dart';

part 'movie_credits.freezed.dart';
part 'movie_credits.g.dart';

@freezed
class MovieCredits with _$MovieCredits {
  const factory MovieCredits({
    required int id,
    required List<Actor> cast,
  }) = _MovieCredits;

  factory MovieCredits.fromJson(Map<String, dynamic> json) => _$MovieCreditsFromJson(json);
}
