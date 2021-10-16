import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/domain/models/movie.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({required this.movie, required this.onTap, Key? key}) : super(key: key);

  final Movie movie;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://image.tmdb.org/t/p/w500${movie.backdropPath}';

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: GestureDetector(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.center,
            children: [
              if (movie.backdropPath != null)
                CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.width * 0.9 * 0.55,
                  width: MediaQuery.of(context).size.width * 0.9,
                ),
              if (movie.backdropPath == null)
                Text(
                  'No image :(',
                  style: Theme.of(context).textTheme.subtitle2,
                ),
              Container(
                height: MediaQuery.of(context).size.width * 0.9 * 0.55,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  alignment: Alignment.bottomRight,
                  child: Text(
                    movie.title,
                    style: Theme.of(context).textTheme.subtitle1,
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
