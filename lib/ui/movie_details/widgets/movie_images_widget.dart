import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/movie_details/provider/movie_images_provider.dart';

class MovieImagesWidget extends ConsumerWidget {
  const MovieImagesWidget({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return watch(movieImagesProvider(movieId)).when(
      error: (err, st) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: Center(
          child: Text(
            err.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ),
      loading: () => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      data: (movieImages) {
        if (movieImages.backdrops.isEmpty) {
          return Container();
        }

        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movieImages.backdrops.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: CachedNetworkImage(imageUrl: movieImages.backdrops[index].filePath),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
