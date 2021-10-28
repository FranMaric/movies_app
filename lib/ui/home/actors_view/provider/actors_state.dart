import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/domain/models/actor.dart';
import 'package:movie_app/domain/models/failure.dart';

part 'actors_state.freezed.dart';

@freezed
abstract class ActorsState with _$ActorsState {
  const factory ActorsState.initial() = _ActorsStateInitial;

  const factory ActorsState.loading() = _ActorsStateLoading;

  const factory ActorsState.data({
    required int page,
    @Default(false) bool isloadingNextPage,
    String? query,
    required List<Actor> actors,
  }) = ActorsStateData;

  const factory ActorsState.failure(Failure failure) = ActorsStateFailure;
}
