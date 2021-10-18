import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/domain/models/movie.dart';

import 'package:movie_app/ui/home/home_screen.dart';
import 'package:movie_app/ui/movie_details/movie_details_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final args = settings.arguments;

  switch (settings.name) {
    case HomeScreen.route:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case MovieDetailsScreen.route:
      if (args is Movie) {
        return MaterialPageRoute(builder: (_) => MovieDetailsScreen(movie: args));
      }
      return _errorRoute();
    default:
      return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(
    builder: (_) => const Scaffold(
      body: Center(
        child: Text('ROUTING ERROR'),
      ),
    ),
  );
}
