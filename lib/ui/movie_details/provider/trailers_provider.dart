import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/models/trailer.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final trailersProvider = FutureProvider.family<String, int>((ref, movieId) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final trailersOrFailure = await moviesRepository.getTrailers(movieId: movieId);

  return trailersOrFailure.fold(
    (failure) => throw failure,
    (trailers) => _correctVideoId(_selectTrailer(trailers, movieId), movieId),
  );
});

/// Finds a trailer that is from YouTube and returns a link to it
String _selectTrailer(List<Trailer> trailers, int movieId) {
  for (final trailer in trailers) {
    if (trailer.site == 'YouTube') {
      return trailer.key;
    }
  }

  throw Failure.noTrailer(movieId);
}

String _correctVideoId(String videoId, int movieId) {
  if (!videoId.contains('http') && (videoId.length == 11)) return videoId;
  videoId = videoId.trim();

  for (var exp in [
    RegExp(r'^https:\/\/(?:www\.|m\.)?youtube\.com\/watch\?v=([_\-a-zA-Z0-9]{11}).*$'),
    RegExp(r'^https:\/\/(?:www\.|m\.)?youtube(?:-nocookie)?\.com\/embed\/([_\-a-zA-Z0-9]{11}).*$'),
    RegExp(r'^https:\/\/youtu\.be\/([_\-a-zA-Z0-9]{11}).*$')
  ]) {
    Match? match = exp.firstMatch(videoId);
    if (match != null && match.groupCount >= 1 && match.group(1) != null) {
      return match.group(1)!;
    }
  }

  throw Failure.noTrailer(movieId);
}
