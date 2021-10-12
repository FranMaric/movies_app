import 'package:dio/dio.dart';

abstract class ApiRepository {
  Future<bool> hasInternetConnection();

  Future<Response<dynamic>> searchMovies({required String query, required int page});
  Future<Response<dynamic>> getTopRatedMovies({required int page});

  Future<Response<dynamic>> searchActors({required String query, required int page});
  Future<Response<dynamic>> getTopRatedActors({required int page});
}
