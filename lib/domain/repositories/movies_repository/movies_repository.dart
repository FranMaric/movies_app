import 'package:movie_app/domain/models/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> searchMovies({required int page, required String query});
  Future<List<Movie>> getTopRatedMovies({required int page});
}
