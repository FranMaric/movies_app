import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:movie_app/domain/models/actor.dart';
import 'package:movie_app/domain/models/actor_credit.dart';
import 'package:movie_app/domain/models/actor_details.dart';
import 'package:movie_app/domain/models/api_image.dart';
import 'package:movie_app/domain/models/failure.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/extensions/nullable_int_extension.dart';

class ActorsRepositoryImpl implements ActorsRepository {
  ActorsRepositoryImpl({required ApiRepository apiRepository}) : _apiRepository = apiRepository;

  final ApiRepository _apiRepository;

  @override
  Future<Either<Failure, List<Actor>>> searchActors({required String query, required int page}) async {
    try {
      final response = await _apiRepository.searchActors(page: page, query: query);

      if (response.statusCode.isSuccessful) {
        final actors = List<Map<String, dynamic>>.from(response.data['results'] as List).map((actor) => Actor.fromJson(actor)).toList();

        return Right(actors);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Actor>>> getPopularActors({required int page}) async {
    try {
      final response = await _apiRepository.getPopularActors(page: page);

      if (response.statusCode.isSuccessful) {
        final actors = List<Map<String, dynamic>>.from(response.data['results'] as List).map((actor) => Actor.fromJson(actor)).toList();

        return Right(actors);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ApiImage>>> getActorImages({required int actorId}) async {
    try {
      final response = await _apiRepository.getActorImages(actorId: actorId);

      if (response.statusCode.isSuccessful) {
        final actorImages = List<Map<String, dynamic>>.from(response.data['profiles'] as List).map((image) => ApiImage.fromJson(image)).toList();

        return Right(actorImages);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ActorDetails>> getActorDetails({required int actorId}) async {
    try {
      final response = await _apiRepository.getActorDetails(actorId: actorId);

      if (response.statusCode.isSuccessful) {
        final actorDetails = ActorDetails.fromJson(response.data);

        return Right(actorDetails);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ActorCredit>>> getActorCredits({required int actorId}) async {
    try {
      final response = await _apiRepository.getActorCredits(actorId: actorId);

      if (response.statusCode.isSuccessful) {
        final actorCredits =
            List<Map<String, dynamic>>.from(response.data['cast'] as List).map((actorCredit) => ActorCredit.fromJson(actorCredit)).toList();

        return Right(actorCredits);
      }

      return Left(Failure.fromResponse(response));
    } on DioError catch (dioError) {
      return Left(Failure.fromDioError(dioError));
    } catch (e) {
      return Left(Failure.generic(e.toString()));
    }
  }
}
