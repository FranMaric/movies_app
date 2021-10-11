import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_impl.dart';
import 'package:movie_app/source_remote/api_repository/api_repository_provider.dart';

final moviesRepositoryProvider = Provider<MoviesRepository>(
  (ref) => MoviesRepositoryImpl(apiRepository: ref.watch(apiRepositoryProvider)),
);
