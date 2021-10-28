// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Actor _$$_ActorFromJson(Map<String, dynamic> json) => _$_Actor(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      name: json['name'] as String,
      character: json['character'] as String?,
      popularity: (json['popularity'] as num).toDouble(),
      profilePath: toUrl(json['profile_path'] as String?),
    );

Map<String, dynamic> _$$_ActorToJson(_$_Actor instance) => <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'popularity': instance.popularity,
      'profile_path': fromUrl(instance.profilePath),
    };
