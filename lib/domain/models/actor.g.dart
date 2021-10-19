// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Actor _$$_ActorFromJson(Map<String, dynamic> json) => _$_Actor(
      adult: json['adult'] as bool,
      gender: json['gender'] as int?,
      id: json['id'] as int,
      name: json['name'] as String,
      character: json['character'] as String,
      popularity: (json['popularity'] as num).toDouble(),
      knownForDepartment: json['known_for_department'] as String,
      originalName: json['original_name'] as String,
      profilePath: toUrl(json['profile_path'] as String?),
    );

Map<String, dynamic> _$$_ActorToJson(_$_Actor instance) => <String, dynamic>{
      'adult': instance.adult,
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'character': instance.character,
      'popularity': instance.popularity,
      'known_for_department': instance.knownForDepartment,
      'original_name': instance.originalName,
      'profile_path': fromUrl(instance.profilePath),
    };
