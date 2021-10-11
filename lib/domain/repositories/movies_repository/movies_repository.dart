import 'package:movie_app/domain/models/movie.dart';

abstract class MoviesRepository {
  Future<List<Movie>> searchMovies({required String page, required String query});
}
