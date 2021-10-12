import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({required ApiRepository apiRepository}) : _apiRepository = apiRepository;

  final ApiRepository _apiRepository;

  @override
  Future<List<Movie>> searchMovies({required int page, required String query}) {
    throw UnimplementedError();
  }
}
