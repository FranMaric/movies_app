import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/actor_details.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository_provider.dart';

final actorDetailsProvider = FutureProvider.family<ActorDetails, int>((ref, actorId) async {
  final actorsRepository = ref.watch(actorsRepositoryProvider);

  final actorDetailsOrFailure = await actorsRepository.getActorDetails(actorId: actorId);

  return actorDetailsOrFailure.fold(
    (failure) => throw failure,
    (actorDetails) => actorDetails,
  );
});
