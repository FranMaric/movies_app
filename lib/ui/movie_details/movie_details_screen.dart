import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/domain/models/movie.dart';
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
                  iconTheme: const IconThemeData(
                    color: Colors.black,
                  ),
                  expandedHeight: 120.0,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        movie.title,
                        style: const TextStyle(
                          color: Colors.black,
                        ),
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
}
