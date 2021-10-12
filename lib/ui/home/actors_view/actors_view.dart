import 'package:flutter/material.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';

class ActorsView extends StatelessWidget {
  ActorsView({Key? key}) : super(key: key);

  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          controller: searchController,
          hintText: 'Search actors',
        ),
      ],
    );
  }
}
