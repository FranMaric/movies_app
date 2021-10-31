import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';

import 'json_data.dart';

class MockApiRepository implements ApiRepository {
  @override
  Future<bool> hasInternetConnection() async {
    return true;
  }

  @override
  Future<Response> getActorCredits({required int actorId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getActorDetails({required int actorId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getActorImages({required int actorId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getAllGenres() async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getMovieCredits({required int movieId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getMovieDetails({required int movieId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getMovieImages({required int movieId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getPopularActors({required int page}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getReviews({required int movieId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> getTopRatedMovies({required int page}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 200,
      data: kTopRatedMoviesJson,
    );
  }

  @override
  Future<Response> getTrailers({required int movieId}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> searchActors({required String query, required int page}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }

  @override
  Future<Response> searchMovies({required String query, required int page}) async {
    return Response(
      requestOptions: RequestOptions(path: 'mock-server'),
      statusCode: 400,
      data: {},
    );
  }
}
