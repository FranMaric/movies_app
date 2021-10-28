import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/actor_details/provider/actor_images_provider.dart';

class ActorImages extends ConsumerWidget {
  const ActorImages({Key? key, required this.actorId}) : super(key: key);

  final int actorId;

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return watch(actorImagesProvider(actorId)).when(
      error: (err, st) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: Center(
          child: Text(
            err.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
      ),
      loading: () => SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      data: (actorImages) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: actorImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: CachedNetworkImage(imageUrl: actorImages[index].filePath),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
