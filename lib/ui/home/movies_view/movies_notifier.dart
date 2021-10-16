import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository.dart';
import 'package:movie_app/ui/home/movies_view/movies_state.dart';

class MoviesNotifier extends StateNotifier<MoviesState> {
  MoviesNotifier({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository,
        super(const MoviesState.initial()) {
    state = const MoviesState.loading();
    _getTopRatedMovies(page: 1);
  }

  final MoviesRepository _moviesRepository;

  void _getTopRatedMovies({required int page}) async {
    final moviesOrFailure = await _moviesRepository.getTopRatedMovies(page: page);

    moviesOrFailure.fold(
      (failure) => null,
      (movies) => state = MoviesState.data(
        page: page,
        movies: movies,
      ),
    );
  }

  void onSearch(String query) async {
    state = const MoviesState.loading();

    final moviesOrFailure = await _moviesRepository.searchMovies(page: 1, query: query);

    moviesOrFailure.fold(
      (failure) => state = const MoviesState.error(),
      (movies) => state = MoviesState.data(
        page: 1,
        movies: movies,
      ),
    );
  }

  void onNextPage() async {
    if (state is MoviesStateData && !(state as MoviesStateData).isloadingNextPage) {
      state = (state as MoviesStateData).copyWith(isloadingNextPage: true);

      final nextPage = (state as MoviesStateData).page + 1;

      final moviesOrFailure = (state as MoviesStateData).query == null
          ? await _moviesRepository.getTopRatedMovies(page: nextPage)
          : await _moviesRepository.searchMovies(page: nextPage, query: (state as MoviesStateData).query!);

      moviesOrFailure.fold(
        (failure) => state = (state as MoviesStateData).copyWith(isloadingNextPage: false),
        (movies) => state = MoviesState.data(
          page: nextPage,
          query: (state as MoviesStateData).query,
          movies: [...(state as MoviesStateData).movies, ...movies],
        ),
      );
    }
  }
}
