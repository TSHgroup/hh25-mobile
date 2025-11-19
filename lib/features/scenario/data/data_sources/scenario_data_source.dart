import 'package:dio/dio.dart';
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

  Future<List<ScenarioModel>> fetchScenarios(int page) async {
    Response response = await _dio.get(
      '${centralUrl}scenario?page=$page&limit=10',
    );
    if (response.statusCode == 200) {
      return (response.data as List<dynamic>)
          .map((dynamic) => ScenarioModel.fromJson(dynamic))
          .toList();
    }

    return [];
  }
}
