import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/actor_details/actors_details_screen.dart';
import 'package:movie_app/ui/common/stateful_wrapper.dart';
import 'package:movie_app/ui/error_handling/failure_handling_mixin.dart';
import 'package:movie_app/ui/home/actors_view/actor_widget.dart';
import 'package:movie_app/ui/home/actors_view/provider/actors_state.dart';
import 'package:movie_app/ui/home/actors_view/provider/actors_view_notifier_provider.dart';
import 'package:movie_app/ui/home/widgets/scroll_to_top_fab.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';

// _scrollController is not inside ActorsView class to keep scroll offset when switching ActorsView and MoviesView
final _scrollController = ScrollController(keepScrollOffset: true);

class ActorsView extends StatelessWidget with FailureHandlingMixin {
  const ActorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void scrollControllerListener() {
      if (_scrollController.position.pixels + 50 > _scrollController.position.maxScrollExtent) {
        context.read(actorsViewNotifierProvider.notifier).onNextPage();
      }
    }

    return ProviderListener<ActorsState>(
      provider: actorsViewNotifierProvider,
      onChange: (context, moviesState) {
        if (moviesState is ActorsStateFailure) {
          showSnackBarMessage(context: context, failure: moviesState.failure);
        }
      },
      child: StatefulWrapper(
        initState: () => _scrollController.addListener(scrollControllerListener),
        dispose: () => _scrollController.removeListener(scrollControllerListener),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                SearchBar(
                  hintText: 'Search actors',
                  onSearch: context.read(actorsViewNotifierProvider.notifier).onSearch,
                ),
                Expanded(
                  child: Consumer(
                    builder: (context, watch, child) {
                      return watch(actorsViewNotifierProvider).when(
                        initial: () => Container(),
                        loading: () => const Center(child: CircularProgressIndicator()),
                        failure: (failure) => Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              failure.toString(),
                              style: Theme.of(context).textTheme.subtitle1,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        data: (page, isLoadingNextPage, query, actors) {
                          if (actors.isEmpty) {
                            return Center(
                              child: Text(
                                'No actors',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            );
                          }

                          return RefreshIndicator(
                            onRefresh: context.read(actorsViewNotifierProvider.notifier).onRefresh,
                            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            child: ListView.builder(
                                controller: _scrollController,
                                itemCount: actors.length + (isLoadingNextPage ? 1 : 0),
                                itemBuilder: (context, index) {
                                  if (index < actors.length) {
                                    return ActorWidget(
                                      actor: actors[index],
                                      onTap: () => Navigator.of(context).pushNamed(ActorDetailsScreen.route, arguments: actors[index]),
                                    );
                                  }

                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CircularProgressIndicator(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  );
                                }),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              right: 15,
              bottom: 15,
              child: ScrollToTopFAB(scrollController: _scrollController),
            ),
          ],
        ),
      ),
    );
  }
}
