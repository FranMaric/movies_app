import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/models/movie_credits.dart';
import 'package:movie_app/domain/models/movie_details.dart';
import 'package:movie_app/domain/models/movie_images.dart';

abstract class MoviesRepository {
  Future<Either<Failure, List<Movie>>> searchMovies({required int page, required String query});
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({required int page});
  Future<Either<Failure, MovieDetails>> getMovieDetails({required int movieId});
  Future<Either<Failure, MovieCredits>> getMovieCredits({required int movieId});
  Future<Either<Failure, MovieImages>> getMovieImages({required int movieId});
}
