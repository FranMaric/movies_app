import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/app/colors.dart';
import 'package:movie_app/ui/movie_details/provider/movie_details_provider.dart';

String minutesToHoursAndMinutes(int totalMinutes) {
  final hours = totalMinutes ~/ 60;
  final minutes = totalMinutes % 60;

  return '${hours}h ${minutes}min';
}

class MovieDetailsWidget extends ConsumerWidget {
  const MovieDetailsWidget({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return watch(movieDetailsProvider(movieId)).when(
      error: (err, st) => Container(
        height: MediaQuery.of(context).size.height * 0.1,
        alignment: Alignment.center,
        child: Text(
          err.toString(),
        ),
      ),
      loading: () => Container(
        height: MediaQuery.of(context).size.height * 0.1,
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      ),
      data: (movieDetails) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (movieDetails.tagline != null)
              Text(
                movieDetails.tagline!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            if (movieDetails.tagline != null) const SizedBox(height: 15),
            if (movieDetails.overview != null)
              Text(
                movieDetails.overview!,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            if (movieDetails.runtime != null) const SizedBox(height: 15),
            if (movieDetails.runtime != null)
              Text(
                'Runtime ${minutesToHoursAndMinutes(movieDetails.runtime!)}',
                style: Theme.of(context).textTheme.subtitle2,
              ),
            if (movieDetails.runtime != null) const SizedBox(height: 15),
            Wrap(
              children: [
                for (final genre in movieDetails.genres)
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: niceGrey,
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                    margin: const EdgeInsets.all(5.0),
                    child: Text(
                      genre.name,
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
