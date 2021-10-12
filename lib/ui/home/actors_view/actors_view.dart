import 'package:flutter/material.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';

class ActorsView extends StatelessWidget {
  const ActorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          hintText: 'Search actors',
        ),
      ],
    );
  }
}
