// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_credit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActorCredit _$$_ActorCreditFromJson(Map<String, dynamic> json) =>
    _$_ActorCredit(
      id: json['id'] as int,
      character: json['character'] as String,
      title: json['title'] as String,
      backdropPath: toUrl(json['backdrop_path'] as String?),
      posterPath: toUrl(json['poster_path'] as String?),
    );

Map<String, dynamic> _$$_ActorCreditToJson(_$_ActorCredit instance) =>
    <String, dynamic>{
      'id': instance.id,
      'character': instance.character,
      'title': instance.title,
      'backdrop_path': fromUrl(instance.backdropPath),
      'poster_path': fromUrl(instance.posterPath),
    };
