import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/movie.dart';
import 'package:movie_app/ui/movie_details/provider/movie_credits_provider.dart';
import 'package:movie_app/ui/movie_details/provider/movie_details_provider.dart';
import 'package:movie_app/ui/movie_details/provider/movie_images_provider.dart';
import 'package:movie_app/ui/movie_details/widgets/actors_widget.dart';
import 'package:movie_app/ui/movie_details/widgets/movie_details_widget.dart';
import 'package:movie_app/ui/movie_details/widgets/movie_images_widget.dart';
import 'package:movie_app/ui/movie_details/widgets/reviews_list.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({Key? key, required this.movie}) : super(key: key);

  static const route = '/movie_details';

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      context.refresh(movieImagesProvider(movie.id));
      context.refresh(movieDetailsProvider(movie.id));
      context.refresh(movieCreditsProvider(movie.id));
    }

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
              body: RefreshIndicator(
                onRefresh: onRefresh,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MovieImagesWidget(movieId: movie.id),
                      MovieDetailsWidget(movieId: movie.id),
                      ActorsWidget(movieId: movie.id),
                      ReviewsList(movieId: movie.id),
                    ],
                  ),
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
}
