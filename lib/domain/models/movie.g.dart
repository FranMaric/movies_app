// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      adult: json['adult'] as bool,
      id: json['id'] as int,
      backdropPath: json['backdrop_path'] as String,
      overview: json['overview'] as String,
      runtime: json['runtime'] as int,
      title: json['title'] as String,
      originalLanguage: json['original_language'] as String,
      releaseDate: json['release_date'] as String,
      tagline: json['tagline'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'adult': instance.adult,
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'overview': instance.overview,
      'runtime': instance.runtime,
      'title': instance.title,
      'original_language': instance.originalLanguage,
      'release_date': instance.releaseDate,
      'tagline': instance.tagline,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
