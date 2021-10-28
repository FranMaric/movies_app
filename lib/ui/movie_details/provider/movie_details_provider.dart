import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/movie_details.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final movieDetailsProvider = FutureProvider.family<MovieDetails, int>((ref, movieId) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final movieDetailsOrFailure = await moviesRepository.getMovieDetails(movieId: movieId);

  return movieDetailsOrFailure.fold(
    (failure) => throw failure,
    (movieDetails) => movieDetails,
  );
});
