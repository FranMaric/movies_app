import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository_impl.dart';
import 'package:movie_app/source_remote/api_repository/api_repository_provider.dart';

final actorsRepositoryProvider = Provider<ActorsRepository>(
  (ref) => ActorsRepositoryImpl(apiRepository: ref.watch(apiRepositoryProvider)),
);
