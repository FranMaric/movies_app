// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actor_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActorDetails _$$_ActorDetailsFromJson(Map<String, dynamic> json) =>
    _$_ActorDetails(
      id: json['id'] as int,
      birthday: json['birthday'] as String?,
      knownForDepartment: json['known_for_department'] as String,
      alsoKnownAs: (json['also_known_as'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      biography: json['biography'] as String,
    );

Map<String, dynamic> _$$_ActorDetailsToJson(_$_ActorDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'birthday': instance.birthday,
      'known_for_department': instance.knownForDepartment,
      'also_known_as': instance.alsoKnownAs,
      'biography': instance.biography,
    };
