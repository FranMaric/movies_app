import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/failure.dart';
import 'package:movie_app/domain/models/movie.dart';

part 'movies_state.freezed.dart';

@freezed
abstract class MoviesState with _$MoviesState {
  const factory MoviesState.initial() = _MoviesStateInitial;

  const factory MoviesState.loading() = _MoviesStateLoading;

  const factory MoviesState.data({
    required int page,
    @Default(false) bool isloadingNextPage,
    String? query,
    required List<Movie> movies,
  }) = MoviesStateData;

  const factory MoviesState.failure(Failure failure) = MoviesStateFailure;
}
