import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository_provider.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_notifier.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_state.dart';

final moviesViewNotifierProvider = StateNotifierProvider<MoviesNotifier, MoviesState>(
  (ref) => MoviesNotifier(moviesRepository: ref.watch(moviesRepositoryProvider)),
);
