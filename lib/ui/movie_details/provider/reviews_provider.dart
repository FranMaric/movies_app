import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/review.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final reviewsProvider = FutureProvider.family.autoDispose<List<Review>, int>((ref, movieId) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final reviewsOrFailure = await moviesRepository.getReviews(movieId: movieId);

  return reviewsOrFailure.fold(
    (failure) => throw failure,
    (reviews) => reviews,
  );
});
