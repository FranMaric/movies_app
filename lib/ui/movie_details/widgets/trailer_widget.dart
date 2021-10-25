import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/movie_details/provider/trailers_provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TrailerWidget extends ConsumerWidget {
  const TrailerWidget({Key? key, required this.movieId}) : super(key: key);

  final int movieId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return watch(trailersProvider(movieId)).maybeWhen(
      orElse: () => Container(),
      data: (videoId) {
        print(videoId);

        final YoutubePlayerController _controller = YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        );

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Trailer',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
              YoutubePlayer(
                controller: _controller,
                bottomActions: [
                  CurrentPosition(),
                  ProgressBar(isExpanded: true),
                  RemainingDuration(),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
