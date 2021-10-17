import 'package:dio/dio.dart';

abstract class ApiRepository {
  Future<bool> hasInternetConnection();

  Future<Response> searchMovies({required String query, required int page});
  Future<Response> getTopRatedMovies({required int page});

  Future<Response> searchActors({required String query, required int page});
  Future<Response> getTopRatedActors({required int page});
}
