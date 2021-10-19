import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/movie_details/provider/movie_credits_provider.dart';

/// Number of actors to show
const int kActorsCount = 5;

class ActorsWidget extends ConsumerWidget {
  const ActorsWidget({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return watch(movieCreditsProvider(movieId)).when(
      loading: () => Container(
        height: MediaQuery.of(context).size.height * 0.1,
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      ),
      error: (err, st) => Container(
        height: MediaQuery.of(context).size.height * 0.1,
        alignment: Alignment.center,
        child: Text(
          err.toString(),
        ),
      ),
      data: (movieCredits) => ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: kActorsCount,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            //TODO: navigate to ActorDetailsScreen
          },
          child: ListTile(
            title: Text(
              movieCredits.cast[index].name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            subtitle: Text(
              'Character: ${movieCredits.cast[index].character}',
              style: Theme.of(context).textTheme.subtitle2?.copyWith(fontSize: 14),
            ),
            leading: Visibility(
              visible: movieCredits.cast[index].profilePath != null,
              child: ClipOval(
                child: CachedNetworkImage(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.cover,
                  imageUrl: movieCredits.cast[index].profilePath!,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
