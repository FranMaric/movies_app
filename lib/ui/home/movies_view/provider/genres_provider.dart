import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';

final genresProvider = FutureProvider((ref) async {
  final moviesRepository = ref.watch(moviesRepositoryProvider);

  final genresOrFailure = await moviesRepository.getAllGenres();

  return genresOrFailure.fold(
    (failure) => throw failure,
    (genres) => genres,
  );
});
