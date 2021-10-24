import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/app/colors.dart';
import 'package:movie_app/domain/models/genre.dart';
import 'package:movie_app/ui/home/movies_view/provider/genres_provider.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_notifier_provider.dart';

const topRatedGenre = Genre(name: 'Top Rated', id: 1);

class GenresList extends StatefulWidget {
  const GenresList({Key? key}) : super(key: key);

  @override
  _GenresListState createState() => _GenresListState();
}

class _GenresListState extends State<GenresList> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    void onGenreTap(int index, Genre genre) {
      setState(() => _selectedIndex = index);

      if (genre == topRatedGenre) {
        context.read(moviesViewNotifierProvider.notifier).getTopRatedMovies(page: 1);
      } else {
        context.read(moviesViewNotifierProvider.notifier).onSearch(genre.name);
      }
    }

    return Consumer(
      builder: (context, watch, child) {
        return watch(genresProvider).maybeWhen(
          orElse: () => Container(),
          data: (genres) {
            final allGenres = [topRatedGenre, ...genres];

            return SizedBox(
              height: 40,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 16.0),
                scrollDirection: Axis.horizontal,
                itemCount: allGenres.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => onGenreTap(index, allGenres[index]),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: niceGrey,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    margin: const EdgeInsets.all(5.0),
                    child: Text(
                      allGenres[index].name,
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                            color: _selectedIndex == index ? Theme.of(context).primaryColor : null,
                          ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
