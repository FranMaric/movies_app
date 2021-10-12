import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/movie.dart';

part 'movies_state.freezed.dart';

extension MoviesGetters on MoviesState {
  bool get isLoading => this is _MoviesStateLoading;
}

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState.initial() = _MoviesStateInitial;

  const factory MoviesState.loading() = _MoviesStateLoading;

  const factory MoviesState.data({required int page, String? query, required List<Movie> movies}) = MoviesStateData;

  const factory MoviesState.error([String? error]) = _MoviesStateError;
}
