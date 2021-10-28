import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository.dart';
import 'package:movie_app/ui/home/actors_view/provider/actors_state.dart';

class ActorsNotifier extends StateNotifier<ActorsState> {
  ActorsNotifier({required ActorsRepository actorsRepository})
      : _actorsRepository = actorsRepository,
        super(const ActorsState.initial()) {
    getPopularActors(page: 1);
  }

  final ActorsRepository _actorsRepository;

  void getPopularActors({required int page}) async {
    state = const ActorsState.loading();

    final actorsOrFailure = await _actorsRepository.getPopularActors(page: page);

    actorsOrFailure.fold(
      (failure) => state = ActorsState.failure(failure),
      (actors) => state = ActorsState.data(
        page: page,
        actors: actors,
      ),
    );
  }

  void onSearch(String query) async {
    if (query.isEmpty) return;

    state = const ActorsState.loading();

    final actorsOrFailure = await _actorsRepository.searchActors(page: 1, query: query);

    actorsOrFailure.fold(
      (failure) => state = ActorsState.failure(failure),
      (actors) => state = ActorsState.data(
        page: 1,
        actors: actors,
        query: query,
      ),
    );
  }

  void onNextPage() async {
    if (state is ActorsStateData && !(state as ActorsStateData).isloadingNextPage) {
      state = (state as ActorsStateData).copyWith(isloadingNextPage: true);

      final nextPage = (state as ActorsStateData).page + 1;

      final actorsOrFailure = (state as ActorsStateData).query == null
          ? await _actorsRepository.getPopularActors(page: nextPage)
          : await _actorsRepository.searchActors(page: nextPage, query: (state as ActorsStateData).query!);

      actorsOrFailure.fold(
        (failure) => state = (state as ActorsStateData).copyWith(isloadingNextPage: false),
        (actors) => state = ActorsState.data(
          page: nextPage,
          query: (state as ActorsStateData).query,
          actors: [...(state as ActorsStateData).actors, ...actors],
        ),
      );
    }
  }

  Future<void> onRefresh() async {
    if (state is ActorsStateData) {
      if ((state as ActorsStateData).query == null) {
        getPopularActors(page: 1);
      } else {
        onSearch((state as ActorsStateData).query!);
      }
    }
  }
}
