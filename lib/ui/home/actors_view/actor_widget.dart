import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/domain/models/actor.dart';

class ActorWidget extends StatelessWidget {
  const ActorWidget({Key? key, required this.actor, required this.onTap}) : super(key: key);

  final Actor actor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: onTap,
        title: Text(
          actor.name,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        trailing: Text(actor.popularity.toStringAsFixed(1)),
        leading: actor.profilePath != null
            ? ClipOval(
                child: CachedNetworkImage(
                  width: MediaQuery.of(context).size.width * 0.15,
                  height: MediaQuery.of(context).size.width * 0.15,
                  fit: BoxFit.cover,
                  imageUrl: actor.profilePath!,
                ),
              )
            : null,
      ),
    );
  }
}
