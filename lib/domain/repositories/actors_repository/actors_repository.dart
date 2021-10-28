import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/models/actor.dart';
import 'package:movie_app/domain/models/failure.dart';

abstract class ActorsRepository {
  Future<Either<Failure, List<Actor>>> searchActors({required String query, required int page});
  Future<Either<Failure, List<Actor>>> getPopularActors({required int page});
}
