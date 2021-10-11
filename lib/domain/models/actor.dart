import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'actor.freezed.dart';
part 'actor.g.dart';

@freezed
@immutable
class Actor with _$Actor {
  const factory Actor({
    required bool adult,
    required int gender,
    required int id,
    required String name,
    @JsonKey(name: 'profile_path') required String profilePath,
  }) = _Actor;

  factory Actor.fromJson(Map<String, dynamic> json) => _$ActorFromJson(json);
}
