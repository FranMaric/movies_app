import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/models/movie_details.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final movieDetailsProvider = FutureProvider.family.autoDispose<Either<Failure, MovieDetails>, int>((ref, movieId) {
  return ref.watch(moviesRepositoryProvider).getMovieDetails(movieId: movieId);
});
