import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/ui/common/stateful_wrapper.dart';
import 'package:movie_app/ui/error_handling/failure_handling_mixin.dart';
import 'package:movie_app/ui/home/movies_view/genres_list.dart';
import 'package:movie_app/ui/home/movies_view/movie_widget.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_view_notifier_provider.dart';
import 'package:movie_app/ui/home/movies_view/provider/movies_state.dart';
import 'package:movie_app/ui/home/widgets/scroll_to_top_fab.dart';
import 'package:movie_app/ui/home/widgets/search_bar.dart';
import 'package:movie_app/ui/movie_details/movie_details_screen.dart';

// _scrollController is not inside MoviesView class to keep scroll offset when switching MoviesView and ActorsView
final _scrollController = ScrollController(keepScrollOffset: true);

class MoviesView extends StatelessWidget with FailureHandlingMixin {
  const MoviesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void scrollControllerListener() {
      if (_scrollController.position.pixels + 50 > _scrollController.position.maxScrollExtent) {
        context.read(moviesViewNotifierProvider.notifier).onNextPage();
      }
    }

    return ProviderListener<MoviesState>(
      provider: moviesViewNotifierProvider,
      onChange: (context, moviesState) {
        if (moviesState is MoviesStateFailure) {
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
                  hintText: 'Search movies',
                  onSearch: context.read(moviesViewNotifierProvider.notifier).onSearch,
                ),
                const GenresList(),
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
                          if (movies.isEmpty) {
                            return Center(
                              child: Text(
                                'No movies',
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            );
                          }

                          return RefreshIndicator(
                            onRefresh: context.read(moviesViewNotifierProvider.notifier).onRefresh,
                            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                            child: ListView.builder(
                                controller: _scrollController,
                                itemCount: movies.length + (isLoadingNextPage ? 1 : 0),
                                itemBuilder: (context, index) {
                                  if (index < movies.length) {
                                    return MovieWidget(
                                      movie: movies[index],
                                      onTap: () => Navigator.of(context).pushNamed(MovieDetailsScreen.route, arguments: movies[index]),
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
