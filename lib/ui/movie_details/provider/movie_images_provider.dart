import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/movie_images.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final movieImagesProvider = FutureProvider.family<MovieImages, int>((ref, movieId) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final movieImagesOrFailure = await moviesRepository.getMovieImages(movieId: movieId);

  return movieImagesOrFailure.fold(
    (failure) => throw failure,
    (movieImages) => movieImages,
  );
});
