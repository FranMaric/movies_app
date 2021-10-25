import 'package:freezed_annotation/freezed_annotation.dart';

part 'trailer.freezed.dart';
part 'trailer.g.dart';

@freezed
class Trailer with _$Trailer {
  const factory Trailer({
    required String name,
    required String key,
    required String site,
    required String type,
    required bool official,
  }) = _Trailer;

  factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
}
