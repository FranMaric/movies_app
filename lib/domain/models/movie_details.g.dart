// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDetails _$$_MovieDetailsFromJson(Map<String, dynamic> json) =>
    _$_MovieDetails(
      id: json['id'] as int,
      budget: json['budget'] as int,
      runtime: json['runtime'] as int?,
      popularity: (json['popularity'] as num).toDouble(),
      adult: json['adult'] as bool,
      backdropPath: json['backdrop_path'] as String?,
      title: json['title'] as String,
      overview: json['overview'] as String?,
      tagline: json['tagline'] as String?,
      originalTitle: json['original_title'] as String,
      originalLanguage: json['original_language'] as String,
      homepage: json['homepage'] as String,
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Genre.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MovieDetailsToJson(_$_MovieDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'budget': instance.budget,
      'runtime': instance.runtime,
      'popularity': instance.popularity,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'title': instance.title,
      'overview': instance.overview,
      'tagline': instance.tagline,
      'original_title': instance.originalTitle,
      'original_language': instance.originalLanguage,
      'homepage': instance.homepage,
      'genres': instance.genres,
    };
