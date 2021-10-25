import 'package:dio/dio.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/models/genre.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/domain/models/movie_credits.dart';
import 'package:movie_app/domain/models/movie_details.dart';
import 'package:movie_app/domain/models/movie_images.dart';
import 'package:movie_app/domain/models/review.dart';
import 'package:movie_app/domain/models/trailer.dart';
import 'package:movie_app/domain/repositories/movies_repository/movies_repository.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/extensions/nullable_int_extension.dart';

import 'package:dartz/dartz.dart';

class MoviesRepositoryImpl implements MoviesRepository {
  MoviesRepositoryImpl({required ApiRepository apiRepository}) : _apiRepository = apiRepository;

  final ApiRepository _apiRepository;

  @override
  Future<Either<Failure, List<Genre>>> getAllGenres() async {
    try {
      final response = await _apiRepository.getAllGenres();

      if (response.statusCode.isSuccessful) {
        final genres = List<Map<String, dynamic>>.from(response.data['genres'] as List).map((genre) => Genre.fromJson(genre)).toList();

        return Right(genres);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies({required int page, required String query}) async {
    try {
      final response = await _apiRepository.searchMovies(page: page, query: query);

      if (response.statusCode.isSuccessful) {
        final movies = List<Map<String, dynamic>>.from(response.data['results'] as List).map((movie) => Movie.fromJson(movie)).toList();

        return Right(movies);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({required int page}) async {
    try {
      final response = await _apiRepository.getTopRatedMovies(page: page);

      if (response.statusCode.isSuccessful) {
        final movies = List<Map<String, dynamic>>.from(response.data['results'] as List).map((movie) => Movie.fromJson(movie)).toList();

        return Right(movies);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails({required int movieId}) async {
    try {
      final response = await _apiRepository.getMovieDetails(movieId: movieId);

      if (response.statusCode.isSuccessful) {
        final movieDetails = MovieDetails.fromJson(response.data);

        return Right(movieDetails);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieCredits>> getMovieCredits({required int movieId}) async {
    try {
      final response = await _apiRepository.getMovieCredits(movieId: movieId);

      if (response.statusCode.isSuccessful) {
        final movieCredits = MovieCredits.fromJson(response.data);

        return Right(movieCredits);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, MovieImages>> getMovieImages({required int movieId}) async {
    try {
      final response = await _apiRepository.getMovieImages(movieId: movieId);

      if (response.statusCode.isSuccessful) {
        final movieImages = MovieImages.fromJson(response.data);

        return Right(movieImages);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Review>>> getReviews({required int movieId}) async {
    try {
      final response = await _apiRepository.getReviews(movieId: movieId);

      if (response.statusCode.isSuccessful) {
        final reviews = List<Map<String, dynamic>>.from(response.data['results'] as List).map((review) => Review.fromJson(review)).toList();

        return Right(reviews);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Trailer>>> getTrailers({required int movieId}) async {
    try {
      final response = await _apiRepository.getTrailers(movieId: movieId);

      if (response.statusCode.isSuccessful) {
        final trailers = List<Map<String, dynamic>>.from(response.data['results'] as List).map((trailer) => Trailer.fromJson(trailer)).toList();

        return Right(trailers);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }
}
