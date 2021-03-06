import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository.dart';
import 'package:movie_app/ui/home/movies_view/provider/current_genre_index_notifier_provider.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_state.dart';

class MoviesNotifier extends StateNotifier<MoviesState> {
  MoviesNotifier({required MoviesRepository moviesRepository, required ProviderReference ref})
      : _moviesRepository = moviesRepository,
        _ref = ref,
        super(const MoviesState.initial()) {
    getTopRatedMovies(page: 1);
  }

  final MoviesRepository _moviesRepository;
  final ProviderReference _ref;

  void getTopRatedMovies({required int page}) async {
    state = const MoviesState.loading();

    final moviesOrFailure = await _moviesRepository.getTopRatedMovies(page: page);

    moviesOrFailure.fold(
      (failure) => state = MoviesState.failure(failure),
      (movies) => state = MoviesState.data(
        page: page,
        movies: movies,
      ),
    );
  }

  void onSearch(String query, {bool fromGenreList = false}) async {
    if (query.isEmpty) return;

    if (!fromGenreList) _ref.read(currentGenreIndexNotifierProvider.notifier).clear();

    state = const MoviesState.loading();

    final moviesOrFailure = await _moviesRepository.searchMovies(page: 1, query: query);

    moviesOrFailure.fold(
      (failure) => state = MoviesState.failure(failure),
      (movies) => state = MoviesState.data(
        page: 1,
        movies: movies,
        query: query,
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

  Future<void> onRefresh() async {
    if (state is MoviesStateData) {
      if ((state as MoviesStateData).query == null) {
        getTopRatedMovies(page: 1);
      } else {
        onSearch((state as MoviesStateData).query!);
      }
    }
  }
}
