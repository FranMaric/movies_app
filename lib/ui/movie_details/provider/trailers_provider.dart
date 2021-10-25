import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/models/trailer.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final trailersProvider = FutureProvider.family<String, int>((ref, movieId) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final trailersOrFailure = await moviesRepository.getTrailers(movieId: movieId);

  return trailersOrFailure.fold(
    (failure) => throw failure,
    (trailers) => _selectTrailer(trailers, movieId),
  );
});

/// Finds a trailer that is from YouTube and returns a link to it
String _selectTrailer(List<Trailer> trailers, int movieId) {
  if (trailers.isEmpty) throw Failure.noTrailer(movieId);

  for (final trailer in trailers) {
    if (trailer.site == 'YouTube') {
      return 'https://www.youtube.com/watch?v=${trailer.key}';
    }
  }

  throw Failure.noTrailer(movieId);
}
