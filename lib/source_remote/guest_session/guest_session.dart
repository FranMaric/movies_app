import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'guest_session.freezed.dart';
part 'guest_session.g.dart';

@freezed
@immutable
class GuestSession with _$GuestSession {
  const factory GuestSession({
    @JsonKey(name: 'guest_session_id')
        required String id,
    @JsonKey(
      name: 'expires_at',
      fromJson: toDateTime,
      toJson: fromDateTime,
    )
        required DateTime expiresAt,
  }) = _GuestSession;

  factory GuestSession.fromJson(Map<String, dynamic> json) => _$GuestSessionFromJson(json);
}

/// Example input value '2021-10-13 16:42:10 UTC'
DateTime toDateTime(String value) {
  final year = int.parse(value.substring(0, 4));
  final month = int.parse(value.substring(5, 7));
  final day = int.parse(value.substring(8, 10));
  final hour = int.parse(value.substring(11, 13));
  final minute = int.parse(value.substring(14, 16));
  final second = int.parse(value.substring(17, 19));

  return DateTime.utc(year, month, day, hour, minute, second);
}

String fromDateTime(DateTime d) {
  return '${d.year}-${d.month}-${d.day} ${d.hour}:${d.minute}:${d.second} UTC';
}
