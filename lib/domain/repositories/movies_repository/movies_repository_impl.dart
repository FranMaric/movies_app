import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/extensions/nullable_int_extension.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({required ApiRepository apiRepository}) : _apiRepository = apiRepository;

  final ApiRepository _apiRepository;

  @override
  Future<List<Movie>> searchMovies({required int page, required String query}) {
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> getTopRatedMovies({required int page}) async {
    // try {
    final response = await _apiRepository.getTopRatedMovies(page: page);

    if (response.statusCode.isSuccessful) {
      final movies = List<Map<String, dynamic>>.from(response.data['results'] as List).map((movie) => Movie.fromJson(movie)).toList();

      return movies;
    }

    return [];
    // } catch (e) {
    //   print(e);
    //   return [];
    // }
  }
}
