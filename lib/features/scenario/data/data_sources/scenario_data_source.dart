import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:odpalgadke/common/app/odpalgadke.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';

class ScenarioDataSource {
  final Dio _dio;

  ScenarioDataSource(this._dio);

  Future<List<ScenarioModel>> fetchOwnScenarios() async {
    try {
      Response response = await _dio.get('${centralUrl}scenario/user/me');
      if (response.statusCode == 200) {
        return (response.data as List<dynamic>)
            .map((dynamic) => ScenarioModel.fromJson(dynamic))
            .toList();
      }
    } catch (_) {}

    return [];
  }

  Future<List<ScenarioModel>> fetchUserScenarios(int userId) async {
    Response response = await _dio.get('${centralUrl}scenario/user/$userId');
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((dynamic) => ScenarioModel.fromJson(dynamic))
          .toList();
    }

    return [];
  }

  Future<Either<Map<String, dynamic>, Map<String, dynamic>>> fetchScenarios(
    int page,
  ) async {
    Response response = await _dio.get(
      '${centralUrl}scenario?page=$page&limit=10',
    );
    if (response.statusCode == 200) {
      return Right(response.data);
    }

    return Left(response.data);
  }

  Future<Either<Map<String, dynamic>, Map<String, dynamic>>> fetchConversations(
    int page,
  ) async {
    Response response = await _dio.get(
      '${centralUrl}user/me/conversations?page=$page&limit=10',
    );
    if (response.statusCode == 200) {
      return Right(response.data);
    }

    return Left(response.data);
  }
}
