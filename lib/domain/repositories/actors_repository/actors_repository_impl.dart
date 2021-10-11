import 'package:movie_app/domain/models/actor.dart';
import 'package:movie_app/domain/repositories/actors_repository/actors_repository.dart';
import 'package:movie_app/source_remote/api_repository/api_repository.dart';
import 'package:movie_app/extensions/nullable_int_extension.dart';

class ActorsRepositoryImpl implements ActorsRepository {
  ActorsRepositoryImpl({required ApiRepository apiRepository}) : _apiRepository = apiRepository;

  final ApiRepository _apiRepository;

  @override
  Future<List<Actor>> searchActors({required String query, required int page}) async {
    final response = await _apiRepository.searchActors(query: query, page: page);

    if (response.statusCode.isSuccessful) {
      final actors = List<Map<String, dynamic>>.from(response.data['results'] as List).map((actor) => Actor.fromJson(actor)).toList();

      return actors;
    }

    return [];
  }
}
