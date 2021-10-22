// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Review _$ReviewFromJson(Map<String, dynamic> json) {
  return _Review.fromJson(json);
}

/// @nodoc
class _$ReviewTearOff {
  const _$ReviewTearOff();

  _Review call(
      {required String author,
      @JsonKey(name: 'author_details') required AuthorDetails authorDetails,
      required String content,
      @JsonKey(name: 'created_at') required String createdAt,
      required String id,
      @JsonKey(name: 'updated_at') required String updatedAt,
      required String url}) {
    return _Review(
      author: author,
      authorDetails: authorDetails,
      content: content,
      createdAt: createdAt,
      id: id,
      updatedAt: updatedAt,
      url: url,
    );
  }

  Review fromJson(Map<String, Object> json) {
    return Review.fromJson(json);
  }
}

/// @nodoc
const $Review = _$ReviewTearOff();

/// @nodoc
mixin _$Review {
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_details')
  AuthorDetails get authorDetails => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewCopyWith<Review> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewCopyWith<$Res> {
  factory $ReviewCopyWith(Review value, $Res Function(Review) then) =
      _$ReviewCopyWithImpl<$Res>;
  $Res call(
      {String author,
      @JsonKey(name: 'author_details') AuthorDetails authorDetails,
      String content,
      @JsonKey(name: 'created_at') String createdAt,
      String id,
      @JsonKey(name: 'updated_at') String updatedAt,
      String url});

  $AuthorDetailsCopyWith<$Res> get authorDetails;
}

/// @nodoc
class _$ReviewCopyWithImpl<$Res> implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._value, this._then);

  final Review _value;
  // ignore: unused_field
  final $Res Function(Review) _then;

  @override
  $Res call({
    Object? author = freezed,
    Object? authorDetails = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorDetails: authorDetails == freezed
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $AuthorDetailsCopyWith<$Res> get authorDetails {
    return $AuthorDetailsCopyWith<$Res>(_value.authorDetails, (value) {
      return _then(_value.copyWith(authorDetails: value));
    });
  }
}

/// @nodoc
abstract class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) then) =
      __$ReviewCopyWithImpl<$Res>;
  @override
  $Res call(
      {String author,
      @JsonKey(name: 'author_details') AuthorDetails authorDetails,
      String content,
      @JsonKey(name: 'created_at') String createdAt,
      String id,
      @JsonKey(name: 'updated_at') String updatedAt,
      String url});

  @override
  $AuthorDetailsCopyWith<$Res> get authorDetails;
}

/// @nodoc
class __$ReviewCopyWithImpl<$Res> extends _$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(_Review _value, $Res Function(_Review) _then)
      : super(_value, (v) => _then(v as _Review));

  @override
  _Review get _value => super._value as _Review;

  @override
  $Res call({
    Object? author = freezed,
    Object? authorDetails = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
    Object? url = freezed,
  }) {
    return _then(_Review(
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorDetails: authorDetails == freezed
          ? _value.authorDetails
          : authorDetails // ignore: cast_nullable_to_non_nullable
              as AuthorDetails,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Review implements _Review {
  const _$_Review(
      {required this.author,
      @JsonKey(name: 'author_details') required this.authorDetails,
      required this.content,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.id,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.url});

  factory _$_Review.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewFromJson(json);

  @override
  final String author;
  @override
  @JsonKey(name: 'author_details')
  final AuthorDetails authorDetails;
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  final String id;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String url;

  @override
  String toString() {
    return 'Review(author: $author, authorDetails: $authorDetails, content: $content, createdAt: $createdAt, id: $id, updatedAt: $updatedAt, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Review &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.authorDetails, authorDetails) ||
                const DeepCollectionEquality()
                    .equals(other.authorDetails, authorDetails)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(authorDetails) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ReviewCopyWith<_Review> get copyWith =>
      __$ReviewCopyWithImpl<_Review>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewToJson(this);
  }
}

abstract class _Review implements Review {
  const factory _Review(
      {required String author,
      @JsonKey(name: 'author_details') required AuthorDetails authorDetails,
      required String content,
      @JsonKey(name: 'created_at') required String createdAt,
      required String id,
      @JsonKey(name: 'updated_at') required String updatedAt,
      required String url}) = _$_Review;

  factory _Review.fromJson(Map<String, dynamic> json) = _$_Review.fromJson;

  @override
  String get author => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'author_details')
  AuthorDetails get authorDetails => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReviewCopyWith<_Review> get copyWith => throw _privateConstructorUsedError;
}

AuthorDetails _$AuthorDetailsFromJson(Map<String, dynamic> json) {
  return _AuthorDetails.fromJson(json);
}

/// @nodoc
class _$AuthorDetailsTearOff {
  const _$AuthorDetailsTearOff();

  _AuthorDetails call(
      {required String name,
      required String username,
      @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
          String? avatarPath,
      double? rating}) {
    return _AuthorDetails(
      name: name,
      username: username,
      avatarPath: avatarPath,
      rating: rating,
    );
  }

  AuthorDetails fromJson(Map<String, Object> json) {
    return AuthorDetails.fromJson(json);
  }
}

/// @nodoc
const $AuthorDetails = _$AuthorDetailsTearOff();

/// @nodoc
mixin _$AuthorDetails {
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
  String? get avatarPath => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorDetailsCopyWith<AuthorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDetailsCopyWith<$Res> {
  factory $AuthorDetailsCopyWith(
          AuthorDetails value, $Res Function(AuthorDetails) then) =
      _$AuthorDetailsCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String username,
      @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
          String? avatarPath,
      double? rating});
}

/// @nodoc
class _$AuthorDetailsCopyWithImpl<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  _$AuthorDetailsCopyWithImpl(this._value, this._then);

  final AuthorDetails _value;
  // ignore: unused_field
  final $Res Function(AuthorDetails) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: avatarPath == freezed
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$AuthorDetailsCopyWith<$Res>
    implements $AuthorDetailsCopyWith<$Res> {
  factory _$AuthorDetailsCopyWith(
          _AuthorDetails value, $Res Function(_AuthorDetails) then) =
      __$AuthorDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String username,
      @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
          String? avatarPath,
      double? rating});
}

/// @nodoc
class __$AuthorDetailsCopyWithImpl<$Res>
    extends _$AuthorDetailsCopyWithImpl<$Res>
    implements _$AuthorDetailsCopyWith<$Res> {
  __$AuthorDetailsCopyWithImpl(
      _AuthorDetails _value, $Res Function(_AuthorDetails) _then)
      : super(_value, (v) => _then(v as _AuthorDetails));

  @override
  _AuthorDetails get _value => super._value as _AuthorDetails;

  @override
  $Res call({
    Object? name = freezed,
    Object? username = freezed,
    Object? avatarPath = freezed,
    Object? rating = freezed,
  }) {
    return _then(_AuthorDetails(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      avatarPath: avatarPath == freezed
          ? _value.avatarPath
          : avatarPath // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorDetails implements _AuthorDetails {
  const _$_AuthorDetails(
      {required this.name,
      required this.username,
      @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
          this.avatarPath,
      this.rating});

  factory _$_AuthorDetails.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorDetailsFromJson(json);

  @override
  final String name;
  @override
  final String username;
  @override
  @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
  final String? avatarPath;
  @override
  final double? rating;

  @override
  String toString() {
    return 'AuthorDetails(name: $name, username: $username, avatarPath: $avatarPath, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthorDetails &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.avatarPath, avatarPath) ||
                const DeepCollectionEquality()
                    .equals(other.avatarPath, avatarPath)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(avatarPath) ^
      const DeepCollectionEquality().hash(rating);

  @JsonKey(ignore: true)
  @override
  _$AuthorDetailsCopyWith<_AuthorDetails> get copyWith =>
      __$AuthorDetailsCopyWithImpl<_AuthorDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorDetailsToJson(this);
  }
}

abstract class _AuthorDetails implements AuthorDetails {
  const factory _AuthorDetails(
      {required String name,
      required String username,
      @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
          String? avatarPath,
      double? rating}) = _$_AuthorDetails;

  factory _AuthorDetails.fromJson(Map<String, dynamic> json) =
      _$_AuthorDetails.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar_path', fromJson: toUrl, toJson: fromUrl)
  String? get avatarPath => throw _privateConstructorUsedError;
  @override
  double? get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthorDetailsCopyWith<_AuthorDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
