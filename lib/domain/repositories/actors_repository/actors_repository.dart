import 'package:movie_app/domain/models/actor.dart';

abstract class ActorsRepository {
  Future<List<Actor>> searchActors({required String query, required int page});
}
