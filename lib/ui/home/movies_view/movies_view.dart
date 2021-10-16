import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/home/movies_view/movie_widget.dart';
import 'package:movie_app/ui/home/movies_view/movies_notifier_provider.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';

class MoviesView extends StatelessWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBar(
          hintText: 'Search movies',
          onSearch: context.read(moviesViewNotifierProvider.notifier).onSearch,
        ),
        Expanded(
          child: Consumer(
            builder: (context, watch, child) {
              return watch(moviesViewNotifierProvider).when(
                initial: () => Container(),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error) => Center(
                  child: Text(
                    error.toString(),
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ),
                data: (page, query, movies) {
                  return ListView.builder(
                    itemCount: movies.length,
                    itemBuilder: (context, index) => MovieWidget(
                      movie: movies[index],
                      onTap: () {
                        //TODO: Navigate to details
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
