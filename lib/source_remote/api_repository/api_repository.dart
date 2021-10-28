import 'package:dio/dio.dart';

abstract class ApiRepository {
  Future<bool> hasInternetConnection();

  Future<Response> getAllGenres();

  Future<Response> searchMovies({required String query, required int page});
  Future<Response> getTopRatedMovies({required int page});
  Future<Response> getMovieDetails({required int movieId});
  Future<Response> getMovieCredits({required int movieId});
  Future<Response> getMovieImages({required int movieId});
  Future<Response> getReviews({required int movieId});
  Future<Response> getTrailers({required int movieId});

  Future<Response> searchActors({required String query, required int page});
  Future<Response> getPopularActors({required int page});
}
