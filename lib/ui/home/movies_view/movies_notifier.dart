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
    state = MoviesState.data(
      page: page,
      movies: await _moviesRepository.getTopRatedMovies(page: page),
    );
  }

  void onSearch(String query) async {
    state = MoviesState.data(
      page: 1,
      movies: await _moviesRepository.searchMovies(page: 1, query: query),
    );
  }

  void onNextPage() async {
    if (state is MoviesStateData) {
      final nextPage = (state as MoviesStateData).page + 1;

      final movies = (state as MoviesStateData).query == null
          ? await _moviesRepository.getTopRatedMovies(page: nextPage)
          : await _moviesRepository.searchMovies(page: nextPage, query: (state as MoviesStateData).query!);

      state = MoviesState.data(
        page: nextPage,
        movies: movies,
      );
    }
  }
}
