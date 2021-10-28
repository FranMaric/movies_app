import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/actor_credit.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository_provider.dart';

final actorCreditsProvider = FutureProvider.family<List<ActorCredit>, int>((ref, actorId) async {
  final actorsRepository = ref.watch(actorsRepositoryProvider);

  final actorCreditsOrFailure = await actorsRepository.getActorCredits(actorId: actorId);

  return actorCreditsOrFailure.fold(
    (failure) => throw failure,
    (actorCredits) => actorCredits,
  );
});
