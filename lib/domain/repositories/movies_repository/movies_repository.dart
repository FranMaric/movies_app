import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/models/movie.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> searchMovies({required int page, required String query});
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({required int page});
}
