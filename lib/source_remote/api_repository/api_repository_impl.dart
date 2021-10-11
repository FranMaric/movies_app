import 'dart:io';

import 'package:dio/dio.dart';
import 'package:movie_app/app/config.dart';
import 'package:movie_app/source_local/shared_preferences/shared_preferences_keys.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/extensions/nullable_int_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiRepositoryImpl implements ApiRepository {
  ApiRepositoryImpl({required String apiKey, required SharedPreferences prefs}) : _prefs = prefs {
    _guestSessionId = _prefs.getString(guesstSessionIdPrefsKey);

    if (_guestSessionId == null) {
      getNewGuestSessionId();
    }
  }

  final SharedPreferences _prefs;

  String? _guestSessionId;

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
  Future<Response> getTopRatedMovies({required String page}) {
    return _dio.get(
      '/movie/top_rated',
      queryParameters: <String, dynamic>{
        'page': page,
      },
    );
  }

  @override
  Future<Response<dynamic>> searchActors({required String query, required int page}) async {
    return _dio.get(
      '/search/person',
      queryParameters: <String, dynamic>{
        'page': page,
        'query': query,
      },
    );
  }

  @override
  Future<Response> getTopRatedActors({required String page}) {
    return _dio.get(
      '/person/top_rated',
      queryParameters: <String, dynamic>{
        'page': page,
      },
    );
  }

  Future<String?> getNewGuestSessionId() async {
    try {
      final response = await _dio.get(
        '/authentication/guest_session/new',
        queryParameters: <String, dynamic>{},
      );

      if (response.statusCode.isSuccessful) {
        return response.data['guest_session_id'];
      }
    } catch (e) {
      return null;
    }
  }
}
