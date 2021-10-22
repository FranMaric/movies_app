// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Review _$$_ReviewFromJson(Map<String, dynamic> json) => _$_Review(
      author: json['author'] as String,
      authorDetails: AuthorDetails.fromJson(
          json['author_details'] as Map<String, dynamic>),
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      id: json['id'] as String,
      updatedAt: json['updated_at'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_ReviewToJson(_$_Review instance) => <String, dynamic>{
      'author': instance.author,
      'author_details': instance.authorDetails,
      'content': instance.content,
      'created_at': instance.createdAt,
      'id': instance.id,
      'updated_at': instance.updatedAt,
      'url': instance.url,
    };

_$_AuthorDetails _$$_AuthorDetailsFromJson(Map<String, dynamic> json) =>
    _$_AuthorDetails(
      name: json['name'] as String,
      username: json['username'] as String,
      avatarPath: toUrl(json['avatar_path'] as String?),
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AuthorDetailsToJson(_$_AuthorDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'avatar_path': fromUrl(instance.avatarPath),
      'rating': instance.rating,
    };
