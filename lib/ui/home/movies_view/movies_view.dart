import 'package:flutter/material.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          hintText: 'Search movies',
        ),
      ],
    );
  }
}
