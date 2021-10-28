import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository_provider.dart';
import 'package:movie_app/ui/home/actors_view/provider/actors_notifier.dart';
import 'package:movie_app/ui/home/actors_view/provider/actors_state.dart';

final actorsViewNotifierProvider = StateNotifierProvider<ActorsNotifier, ActorsState>(
  (ref) => ActorsNotifier(actorsRepository: ref.watch(actorsRepositoryProvider)),
);
