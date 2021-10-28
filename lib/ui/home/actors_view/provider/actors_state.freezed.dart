// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'actors_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActorsStateTearOff {
  const _$ActorsStateTearOff();

  _ActorsStateInitial initial() {
    return const _ActorsStateInitial();
  }

  _ActorsStateLoading loading() {
    return const _ActorsStateLoading();
  }

  ActorsStateData data(
      {required int page,
      bool isloadingNextPage = false,
      String? query,
      required List<Actor> actors}) {
    return ActorsStateData(
      page: page,
      isloadingNextPage: isloadingNextPage,
      query: query,
      actors: actors,
    );
  }

  ActorsStateFailure failure(Failure failure) {
    return ActorsStateFailure(
      failure,
    );
  }
}

/// @nodoc
const $ActorsState = _$ActorsStateTearOff();

/// @nodoc
mixin _$ActorsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Actor> actors)
        data,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Actor> actors)?
        data,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Actor> actors)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActorsStateInitial value) initial,
    required TResult Function(_ActorsStateLoading value) loading,
    required TResult Function(ActorsStateData value) data,
    required TResult Function(ActorsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorsStateCopyWith<$Res> {
  factory $ActorsStateCopyWith(
          ActorsState value, $Res Function(ActorsState) then) =
      _$ActorsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActorsStateCopyWithImpl<$Res> implements $ActorsStateCopyWith<$Res> {
  _$ActorsStateCopyWithImpl(this._value, this._then);

  final ActorsState _value;
  // ignore: unused_field
  final $Res Function(ActorsState) _then;
}

/// @nodoc
abstract class _$ActorsStateInitialCopyWith<$Res> {
  factory _$ActorsStateInitialCopyWith(
          _ActorsStateInitial value, $Res Function(_ActorsStateInitial) then) =
      __$ActorsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActorsStateInitialCopyWithImpl<$Res>
    extends _$ActorsStateCopyWithImpl<$Res>
    implements _$ActorsStateInitialCopyWith<$Res> {
  __$ActorsStateInitialCopyWithImpl(
      _ActorsStateInitial _value, $Res Function(_ActorsStateInitial) _then)
      : super(_value, (v) => _then(v as _ActorsStateInitial));

  @override
  _ActorsStateInitial get _value => super._value as _ActorsStateInitial;
}

/// @nodoc

class _$_ActorsStateInitial implements _ActorsStateInitial {
  const _$_ActorsStateInitial();

  @override
  String toString() {
    return 'ActorsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActorsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Actor> actors)
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
            List<Actor> actors)?
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
            List<Actor> actors)?
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
    required TResult Function(_ActorsStateInitial value) initial,
    required TResult Function(_ActorsStateLoading value) loading,
    required TResult Function(ActorsStateData value) data,
    required TResult Function(ActorsStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ActorsStateInitial implements ActorsState {
  const factory _ActorsStateInitial() = _$_ActorsStateInitial;
}

/// @nodoc
abstract class _$ActorsStateLoadingCopyWith<$Res> {
  factory _$ActorsStateLoadingCopyWith(
          _ActorsStateLoading value, $Res Function(_ActorsStateLoading) then) =
      __$ActorsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActorsStateLoadingCopyWithImpl<$Res>
    extends _$ActorsStateCopyWithImpl<$Res>
    implements _$ActorsStateLoadingCopyWith<$Res> {
  __$ActorsStateLoadingCopyWithImpl(
      _ActorsStateLoading _value, $Res Function(_ActorsStateLoading) _then)
      : super(_value, (v) => _then(v as _ActorsStateLoading));

  @override
  _ActorsStateLoading get _value => super._value as _ActorsStateLoading;
}

/// @nodoc

class _$_ActorsStateLoading implements _ActorsStateLoading {
  const _$_ActorsStateLoading();

  @override
  String toString() {
    return 'ActorsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActorsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Actor> actors)
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
            List<Actor> actors)?
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
            List<Actor> actors)?
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
    required TResult Function(_ActorsStateInitial value) initial,
    required TResult Function(_ActorsStateLoading value) loading,
    required TResult Function(ActorsStateData value) data,
    required TResult Function(ActorsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ActorsStateLoading implements ActorsState {
  const factory _ActorsStateLoading() = _$_ActorsStateLoading;
}

/// @nodoc
abstract class $ActorsStateDataCopyWith<$Res> {
  factory $ActorsStateDataCopyWith(
          ActorsStateData value, $Res Function(ActorsStateData) then) =
      _$ActorsStateDataCopyWithImpl<$Res>;
  $Res call(
      {int page, bool isloadingNextPage, String? query, List<Actor> actors});
}

/// @nodoc
class _$ActorsStateDataCopyWithImpl<$Res>
    extends _$ActorsStateCopyWithImpl<$Res>
    implements $ActorsStateDataCopyWith<$Res> {
  _$ActorsStateDataCopyWithImpl(
      ActorsStateData _value, $Res Function(ActorsStateData) _then)
      : super(_value, (v) => _then(v as ActorsStateData));

  @override
  ActorsStateData get _value => super._value as ActorsStateData;

  @override
  $Res call({
    Object? page = freezed,
    Object? isloadingNextPage = freezed,
    Object? query = freezed,
    Object? actors = freezed,
  }) {
    return _then(ActorsStateData(
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
      actors: actors == freezed
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Actor>,
    ));
  }
}

/// @nodoc

class _$ActorsStateData implements ActorsStateData {
  const _$ActorsStateData(
      {required this.page,
      this.isloadingNextPage = false,
      this.query,
      required this.actors});

  @override
  final int page;
  @JsonKey(defaultValue: false)
  @override
  final bool isloadingNextPage;
  @override
  final String? query;
  @override
  final List<Actor> actors;

  @override
  String toString() {
    return 'ActorsState.data(page: $page, isloadingNextPage: $isloadingNextPage, query: $query, actors: $actors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorsStateData &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.isloadingNextPage, isloadingNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.isloadingNextPage, isloadingNextPage)) &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)) &&
            (identical(other.actors, actors) ||
                const DeepCollectionEquality().equals(other.actors, actors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(isloadingNextPage) ^
      const DeepCollectionEquality().hash(query) ^
      const DeepCollectionEquality().hash(actors);

  @JsonKey(ignore: true)
  @override
  $ActorsStateDataCopyWith<ActorsStateData> get copyWith =>
      _$ActorsStateDataCopyWithImpl<ActorsStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Actor> actors)
        data,
    required TResult Function(Failure failure) failure,
  }) {
    return data(page, isloadingNextPage, query, actors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Actor> actors)?
        data,
    TResult Function(Failure failure)? failure,
  }) {
    return data?.call(page, isloadingNextPage, query, actors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(int page, bool isloadingNextPage, String? query,
            List<Actor> actors)?
        data,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(page, isloadingNextPage, query, actors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActorsStateInitial value) initial,
    required TResult Function(_ActorsStateLoading value) loading,
    required TResult Function(ActorsStateData value) data,
    required TResult Function(ActorsStateFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ActorsStateData implements ActorsState {
  const factory ActorsStateData(
      {required int page,
      bool isloadingNextPage,
      String? query,
      required List<Actor> actors}) = _$ActorsStateData;

  int get page => throw _privateConstructorUsedError;
  bool get isloadingNextPage => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;
  List<Actor> get actors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorsStateDataCopyWith<ActorsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorsStateFailureCopyWith<$Res> {
  factory $ActorsStateFailureCopyWith(
          ActorsStateFailure value, $Res Function(ActorsStateFailure) then) =
      _$ActorsStateFailureCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ActorsStateFailureCopyWithImpl<$Res>
    extends _$ActorsStateCopyWithImpl<$Res>
    implements $ActorsStateFailureCopyWith<$Res> {
  _$ActorsStateFailureCopyWithImpl(
      ActorsStateFailure _value, $Res Function(ActorsStateFailure) _then)
      : super(_value, (v) => _then(v as ActorsStateFailure));

  @override
  ActorsStateFailure get _value => super._value as ActorsStateFailure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(ActorsStateFailure(
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

class _$ActorsStateFailure implements ActorsStateFailure {
  const _$ActorsStateFailure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ActorsState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ActorsStateFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $ActorsStateFailureCopyWith<ActorsStateFailure> get copyWith =>
      _$ActorsStateFailureCopyWithImpl<ActorsStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            int page, bool isloadingNextPage, String? query, List<Actor> actors)
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
            List<Actor> actors)?
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
            List<Actor> actors)?
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
    required TResult Function(_ActorsStateInitial value) initial,
    required TResult Function(_ActorsStateLoading value) loading,
    required TResult Function(ActorsStateData value) data,
    required TResult Function(ActorsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ActorsStateInitial value)? initial,
    TResult Function(_ActorsStateLoading value)? loading,
    TResult Function(ActorsStateData value)? data,
    TResult Function(ActorsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ActorsStateFailure implements ActorsState {
  const factory ActorsStateFailure(Failure failure) = _$ActorsStateFailure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorsStateFailureCopyWith<ActorsStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
