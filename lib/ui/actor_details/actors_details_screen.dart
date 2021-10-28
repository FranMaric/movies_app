import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/actor.dart';
import 'package:movie_app/ui/actor_details/provider/actor_images_provider.dart';
import 'package:movie_app/ui/actor_details/widgets/actor_images.dart';

class ActorDetailsScreen extends StatelessWidget {
  const ActorDetailsScreen({Key? key, required this.actor}) : super(key: key);

  static const route = '/actor_details';

  final Actor actor;

  @override
  Widget build(BuildContext context) {
    Future<void> onRefresh() async {
      context.refresh(actorImagesProvider(actor.id));
      // context.refresh(movieDetailsProvider(movie.id));
      // context.refresh(movieCreditsProvider(movie.id));
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
                        actor.name,
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
                      ActorImages(actorId: actor.id),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
