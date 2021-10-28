import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor.freezed.dart';
part 'actor.g.dart';

@freezed
class Actor with _$Actor {
  const factory Actor({
    required bool adult,
    required int id,
    required String name,
    String? character,
    required double popularity,
    @JsonKey(name: 'profile_path', fromJson: toUrl, toJson: fromUrl) String? profilePath,
  }) = _Actor;

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
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
