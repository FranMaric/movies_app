import 'package:freezed_annotation/freezed_annotation.dart';

part 'actor_details.freezed.dart';
part 'actor_details.g.dart';

@freezed
class ActorDetails with _$ActorDetails {
  const factory ActorDetails({
    required int id,
    String? birthday,
    @JsonKey(name: 'known_for_department') required String knownForDepartment,
    @JsonKey(name: 'also_known_as') required List<String> alsoKnownAs,
    required String biography,
  }) = _ActorDetails;

  factory ActorDetails.fromJson(Map<String, dynamic> json) => _$ActorDetailsFromJson(json);
}
