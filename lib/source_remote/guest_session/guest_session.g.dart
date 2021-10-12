// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guest_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuestSession _$$_GuestSessionFromJson(Map<String, dynamic> json) =>
    _$_GuestSession(
      id: json['guest_session_id'] as String,
      expiresAt: toDateTime(json['expires_at'] as String),
    );

Map<String, dynamic> _$$_GuestSessionToJson(_$_GuestSession instance) =>
    <String, dynamic>{
      'guest_session_id': instance.id,
      'expires_at': fromDateTime(instance.expiresAt),
    };
