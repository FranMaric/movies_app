import 'package:flutter/material.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/ui/movie_details/widgets/actors_widget.dart';
import 'package:movie_app/ui/movie_details/widgets/movie_images_widget.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key, required this.movie}) : super(key: key);

  static const route = '/movie_details';

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder: (context, __) => [
                SliverAppBar(
                  pinned: true,
                  expandedHeight: 120.0,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        movie.title,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ),
                  ),
                ),
              ],
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MovieImagesWidget(movieId: movie.id),
                    _actorsTitle(context),
                    ActorsWidget(movieId: movie.id),
                  ],
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.all(24.0),
            // TODO: add button for new comments, when pressen should pop up modal bottomsheet for input
          )
        ],
      ),
    );
  }

  Widget _actorsTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
        'Actors',
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }
}
