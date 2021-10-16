import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/common/stateful_wrapper.dart';
import 'package:movie_app/ui/error_handling/failure_handling_mixin.dart';
import 'package:movie_app/ui/home/movies_view/movie_widget.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_notifier_provider.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_state.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';

class MoviesView extends StatelessWidget with FailureHandlingMixin {
  MoviesView({Key? key}) : super(key: key);

  final scrollController = ScrollController(keepScrollOffset: true);

  @override
  Widget build(BuildContext context) {
    void scrollControllerListener() {
      if (scrollController.position.pixels + 50 > scrollController.position.maxScrollExtent) {
        context.read(moviesViewNotifierProvider.notifier).onNextPage();
      }
    }

    return ProviderListener<MoviesState>(
      provider: moviesViewNotifierProvider,
      onChange: (context, moviesState) {
        if (moviesState is MoviesStateFailure) {
          showSnackBarMessage(
            context: context,
            failure: moviesState.failure,
          );
        }
      },
      child: StatefulWrapper(
        initState: () => scrollController.addListener(scrollControllerListener),
        dispose: () => scrollController.removeListener(scrollControllerListener),
        child: Column(
          children: [
            SearchBar(
              hintText: 'Search movies',
              onSearch: context.read(moviesViewNotifierProvider.notifier).onSearch,
            ),
            Expanded(
              child: Consumer(
                builder: (context, watch, child) {
                  return watch(moviesViewNotifierProvider).when(
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
                    data: (page, isLoadingNextPage, query, movies) {
                      return RefreshIndicator(
                        onRefresh: context.read(moviesViewNotifierProvider.notifier).onRefresh,
                        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                        child: ListView.builder(
                            controller: scrollController,
                            itemCount: movies.length + (isLoadingNextPage ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (index < movies.length) {
                                return MovieWidget(
                                  movie: movies[index],
                                  onTap: () {
                                    //TODO: Navigate to details
                                  },
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
      ),
    );
  }
}
