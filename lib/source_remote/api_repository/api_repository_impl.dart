import 'dart:io';

import 'package:alice/alice.dart';
import 'package:dio/dio.dart';
import 'package:flutter_loggy_dio/flutter_loggy_dio.dart';
import 'package:movie_app/app/config.dart';
import 'package:movie_app/source_local/shared_preferences/shared_preferences_keys.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/extensions/nullable_int_extension.dart';
import 'package:movie_app/source_remote/guest_session/guest_session.dart';
import 'package:shared_preferences/shared_preferences.dart';

const useAlice = true;

class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl({required String apiKey, required SharedPreferences prefs}) : _prefs = prefs {
    _dio.interceptors.addAll(
      [
        LoggyDioInterceptor(),
        if (useAlice) _alice.getDioInterceptor(),
      ],
    );

    initializeGuesstSession();
  }

  final SharedPreferences _prefs;

  GuestSession? _guestSession;

  final Alice _alice = Alice();

  Alice get alice => _alice;

  /// Dio initialization
  final Dio _dio = Dio()
    ..options = BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {
        'api_key': apiKey,
      },
    );

  @override
  Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }

  // Movie methods

  @override
  Future<Response> getAllGenres() {
    return _dio.get('/genre/movie/list');
  }

  @override
  Future<Response> searchMovies({required String query, required int page}) {
    return _dio.get(
      '/search/movie',
      queryParameters: <String, dynamic>{
        'page': page,
        'query': query,
      },
    );
  }

  @override
  Future<Response> getTopRatedMovies({required int page}) {
    return _dio.get(
      '/movie/top_rated',
      queryParameters: <String, dynamic>{
        'page': page,
      },
    );
  }

  @override
  Future<Response> getMovieDetails({required int movieId}) {
    return _dio.get('/movie/$movieId');
  }

  @override
  Future<Response> getMovieCredits({required int movieId}) {
    return _dio.get('/movie/$movieId/credits');
  }

  @override
  Future<Response> getMovieImages({required int movieId}) {
    return _dio.get('/movie/$movieId/images');
  }

  @override
  Future<Response> getReviews({required int movieId}) {
    return _dio.get('/movie/$movieId/reviews');
  }

  @override
  Future<Response> getTrailers({required int movieId}) {
    return _dio.get('/movie/$movieId/videos');
  }

  // Actor methods

  @override
  Future<Response> searchActors({required String query, required int page}) async {
    return _dio.get(
      '/search/person',
      queryParameters: <String, dynamic>{
        'page': page,
        'query': query,
      },
    );
  }

  @override
  Future<Response> getPopularActors({required int page}) {
    return _dio.get(
      '/person/popular',
      queryParameters: <String, dynamic>{
        'page': page,
      },
    );
  }

  @override
  Future<Response> getActorImages({required int actorId}) {
    return _dio.get('/person/$actorId/images');
  }

  @override
  Future<Response> getActorDetails({required int actorId}) {
    return _dio.get('/person/$actorId');
  }

  @override
  Future<Response> getActorCredits({required int actorId}) {
    return _dio.get('/person/$actorId/movie_credits');
  }

  // GuesstSession methods

  void initializeGuesstSession() async {
    final guestSessionString = _prefs.getString(guestSessionPrefsKey);

    if (guestSessionString != null) {
      final args = guestSessionString.split(';;');
      _guestSession = GuestSession(id: args[0], expiresAt: DateTime.fromMillisecondsSinceEpoch(int.parse(args[1])));
    } else {
      _guestSession = await getNewGuestSession();
      if (_guestSession != null) {
        _prefs.setString(guestSessionPrefsKey, '${_guestSession!.id};;${_guestSession!.expiresAt.millisecondsSinceEpoch}');
      }
    }
  }

  Future<GuestSession?> getNewGuestSession() async {
    try {
      final response = await _dio.get(
        '/authentication/guest_session/new',
        queryParameters: <String, dynamic>{},
      );

      if (response.statusCode.isSuccessful) {
        return GuestSession.fromJson(response.data);
      }
    } catch (e) {
      return null;
    }
  }
}
