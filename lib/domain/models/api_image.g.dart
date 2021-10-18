// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiImage _$$_ApiImageFromJson(Map<String, dynamic> json) => _$_ApiImage(
      aspectRatio: (json['aspect_ratio'] as num).toDouble(),
      filePath: json['file_path'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
      voteAverage: json['vote_average'] as int,
      voteCount: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_ApiImageToJson(_$_ApiImage instance) =>
    <String, dynamic>{
      'aspect_ratio': instance.aspectRatio,
      'file_path': instance.filePath,
      'height': instance.height,
      'width': instance.width,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
