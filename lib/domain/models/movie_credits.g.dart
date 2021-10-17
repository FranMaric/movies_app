// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieCredits _$$_MovieCreditsFromJson(Map<String, dynamic> json) =>
    _$_MovieCredits(
      id: json['id'] as int,
      cast: (json['cast'] as List<dynamic>)
          .map((e) => Actor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieCreditsToJson(_$_MovieCredits instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
    };
