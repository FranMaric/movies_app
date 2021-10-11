import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/app/config.dart';
import 'package:movie_app/source_local/shared_preferences/shared_preferences_provider.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/source_remote/api_repository/api_repository_impl.dart';

final apiRepositoryProvider = Provider<ApiRepository>(
  (ref) => ApiRepositoryImpl(apiKey: apiKey, prefs: ref.watch(sharedPreferencesProvider)),
);
