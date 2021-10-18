import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/movie_credits.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final movieCreditsProvider = FutureProvider.family.autoDispose<MovieCredits, int>((ref, movieId) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final movieCreditsOrFailure = await moviesRepository.getMovieCredits(movieId: movieId);

  return movieCreditsOrFailure.fold(
    (failure) => throw failure,
    (movieCredits) => movieCredits,
  );
});
