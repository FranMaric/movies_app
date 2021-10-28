import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/models/actor.dart';
import 'package:movie_app/domain/models/actor_credit.dart';
import 'package:movie_app/domain/models/actor_details.dart';
import 'package:movie_app/domain/models/api_image.dart';
import 'package:movie_app/domain/models/failure.dart';

abstract class ActorsRepository {
  Future<Either<Failure, List<Actor>>> searchActors({required String query, required int page});
  Future<Either<Failure, List<Actor>>> getPopularActors({required int page});
  Future<Either<Failure, List<ApiImage>>> getActorImages({required int actorId});
  Future<Either<Failure, ActorDetails>> getActorDetails({required int actorId});
  Future<Either<Failure, List<ActorCredit>>> getActorCredits({required int actorId});
}
