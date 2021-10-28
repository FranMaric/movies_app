import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/models/api_image.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository_provider.dart';

final actorImagesProvider = FutureProvider.family<List<ApiImage>, int>((ref, actorId) async {
  final actorsRepository = ref.watch(actorsRepositoryProvider);

  final actorImagesOrFailure = await actorsRepository.getActorImages(actorId: actorId);

  return actorImagesOrFailure.fold(
    (failure) => throw failure,
    (actorImages) => actorImages,
  );
});
