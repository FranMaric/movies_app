import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/app/theme.dart';
import 'package:movie_app/domain/route_generator.dart';
import 'package:movie_app/source_remote/api_repository/api_repository_impl.dart';
import 'package:movie_app/source_remote/api_repository/api_repository_provider.dart';

class MovieApp extends StatelessWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apiRepository = context.read(apiRepositoryProvider);

    GlobalKey<NavigatorState>? navigatorKey;

    if (apiRepository is ApiRepositoryImpl && useAlice) {
      navigatorKey = apiRepository.alice.getNavigatorKey();
    }

    return MaterialApp(
      title: 'Movie app',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      onGenerateRoute: generateRoute,
    );
  }
}
