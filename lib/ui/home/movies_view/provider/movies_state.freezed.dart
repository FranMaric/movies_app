// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesStateTearOff {
  const _$MoviesStateTearOff();

  _MoviesStateInitial initial() {
    return const _MoviesStateInitial();
  }

  _MoviesStateLoading loading() {
    return const _MoviesStateLoading();
  }

  MoviesStateData data(
      {required int page,
      bool isloadingNextPage = false,
      String? query,
      required List<Movie> movies}) {
    return MoviesStateData(
      page: page,
      isloadingNextPage: isloadingNextPage,
      query: query,
      movies: movies,
    );
  }

  MoviesStateFailure failure(Failure failure) {
    return MoviesStateFailure(
      failure,
    );
  }
}

/// @nodoc
const $MoviesState = _$MoviesStateTearOff();

/// @nodoc
mixin _$MoviesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Movie> movies)
        data,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateInitial value) initial,
    required TResult Function(_MoviesStateLoading value) loading,
    required TResult Function(MoviesStateData value) data,
    required TResult Function(MoviesStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  final MoviesState _value;
  // ignore: unused_field
  final $Res Function(MoviesState) _then;
}

/// @nodoc
abstract class _$MoviesStateInitialCopyWith<$Res> {
  factory _$MoviesStateInitialCopyWith(
          _MoviesStateInitial value, $Res Function(_MoviesStateInitial) then) =
      __$MoviesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$MoviesStateInitialCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$MoviesStateInitialCopyWith<$Res> {
  __$MoviesStateInitialCopyWithImpl(
      _MoviesStateInitial _value, $Res Function(_MoviesStateInitial) _then)
      : super(_value, (v) => _then(v as _MoviesStateInitial));

  @override
  _MoviesStateInitial get _value => super._value as _MoviesStateInitial;
}

/// @nodoc

class _$_MoviesStateInitial implements _MoviesStateInitial {
  const _$_MoviesStateInitial();

  @override
  String toString() {
    return 'MoviesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MoviesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Movie> movies)
        data,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateInitial value) initial,
    required TResult Function(_MoviesStateLoading value) loading,
    required TResult Function(MoviesStateData value) data,
    required TResult Function(MoviesStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MoviesStateInitial implements MoviesState {
  const factory _MoviesStateInitial() = _$_MoviesStateInitial;
}

/// @nodoc
abstract class _$MoviesStateLoadingCopyWith<$Res> {
  factory _$MoviesStateLoadingCopyWith(
          _MoviesStateLoading value, $Res Function(_MoviesStateLoading) then) =
      __$MoviesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$MoviesStateLoadingCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements _$MoviesStateLoadingCopyWith<$Res> {
  __$MoviesStateLoadingCopyWithImpl(
      _MoviesStateLoading _value, $Res Function(_MoviesStateLoading) _then)
      : super(_value, (v) => _then(v as _MoviesStateLoading));

  @override
  _MoviesStateLoading get _value => super._value as _MoviesStateLoading;
}

/// @nodoc

class _$_MoviesStateLoading implements _MoviesStateLoading {
  const _$_MoviesStateLoading();

  @override
  String toString() {
    return 'MoviesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MoviesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Movie> movies)
        data,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateInitial value) initial,
    required TResult Function(_MoviesStateLoading value) loading,
    required TResult Function(MoviesStateData value) data,
    required TResult Function(MoviesStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _MoviesStateLoading implements MoviesState {
  const factory _MoviesStateLoading() = _$_MoviesStateLoading;
}

/// @nodoc
abstract class $MoviesStateDataCopyWith<$Res> {
  factory $MoviesStateDataCopyWith(
          MoviesStateData value, $Res Function(MoviesStateData) then) =
      _$MoviesStateDataCopyWithImpl<$Res>;
  $Res call(
      {int page, bool isloadingNextPage, String? query, List<Movie> movies});
}

/// @nodoc
class _$MoviesStateDataCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements $MoviesStateDataCopyWith<$Res> {
  _$MoviesStateDataCopyWithImpl(
      MoviesStateData _value, $Res Function(MoviesStateData) _then)
      : super(_value, (v) => _then(v as MoviesStateData));

  @override
  MoviesStateData get _value => super._value as MoviesStateData;

  @override
  $Res call({
    Object? page = freezed,
    Object? isloadingNextPage = freezed,
    Object? query = freezed,
    Object? movies = freezed,
  }) {
    return _then(MoviesStateData(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isloadingNextPage: isloadingNextPage == freezed
          ? _value.isloadingNextPage
          : isloadingNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MoviesStateData implements MoviesStateData {
  const _$MoviesStateData(
      {required this.page,
      this.isloadingNextPage = false,
      this.query,
      required this.movies});

  @override
  final int page;
  @JsonKey(defaultValue: false)
  @override
  final bool isloadingNextPage;
  @override
  final String? query;
  @override
  final List<Movie> movies;

  @override
  String toString() {
    return 'MoviesState.data(page: $page, isloadingNextPage: $isloadingNextPage, query: $query, movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoviesStateData &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.isloadingNextPage, isloadingNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.isloadingNextPage, isloadingNextPage)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(isloadingNextPage) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  $MoviesStateDataCopyWith<MoviesStateData> get copyWith =>
      _$MoviesStateDataCopyWithImpl<MoviesStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Movie> movies)
        data,
    required TResult Function(Failure failure) failure,
  }) {
    return data(page, isloadingNextPage, query, movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
  }) {
    return data?.call(page, isloadingNextPage, query, movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(page, isloadingNextPage, query, movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateInitial value) initial,
    required TResult Function(_MoviesStateLoading value) loading,
    required TResult Function(MoviesStateData value) data,
    required TResult Function(MoviesStateFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class MoviesStateData implements MoviesState {
  const factory MoviesStateData(
      {required int page,
      bool isloadingNextPage,
      String? query,
      required List<Movie> movies}) = _$MoviesStateData;

  int get page => throw _privateConstructorUsedError;
  bool get isloadingNextPage => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  List<Movie> get movies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesStateDataCopyWith<MoviesStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateFailureCopyWith<$Res> {
  factory $MoviesStateFailureCopyWith(
          MoviesStateFailure value, $Res Function(MoviesStateFailure) then) =
      _$MoviesStateFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$MoviesStateFailureCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res>
    implements $MoviesStateFailureCopyWith<$Res> {
  _$MoviesStateFailureCopyWithImpl(
      MoviesStateFailure _value, $Res Function(MoviesStateFailure) _then)
      : super(_value, (v) => _then(v as MoviesStateFailure));

  @override
  MoviesStateFailure get _value => super._value as MoviesStateFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(MoviesStateFailure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$MoviesStateFailure implements MoviesStateFailure {
  const _$MoviesStateFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MoviesState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoviesStateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $MoviesStateFailureCopyWith<MoviesStateFailure> get copyWith =>
      _$MoviesStateFailureCopyWithImpl<MoviesStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Movie> movies)
        data,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Movie> movies)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoviesStateInitial value) initial,
    required TResult Function(_MoviesStateLoading value) loading,
    required TResult Function(MoviesStateData value) data,
    required TResult Function(MoviesStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoviesStateInitial value)? initial,
    TResult Function(_MoviesStateLoading value)? loading,
    TResult Function(MoviesStateData value)? data,
    TResult Function(MoviesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class MoviesStateFailure implements MoviesState {
  const factory MoviesStateFailure(Failure failure) = _$MoviesStateFailure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesStateFailureCopyWith<MoviesStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
