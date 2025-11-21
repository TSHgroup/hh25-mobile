import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:odpalgadke/common/app/odpalgadke.dart';
import 'package:odpalgadke/features/persona/data/models/persona_model.dart';

class PersonaDataSource {
  final Dio _dio;

  PersonaDataSource(this._dio);

  Future<Either<Map<String, dynamic>, Map<String, dynamic>>> fetchPersonas(
    int page,
  ) async {
    Response response = await _dio.get(
      '${centralUrl}persona?page=$page&limit=100',
    );
    if (response.statusCode == 200) {
      return Right(response.data);
    }

    return Left(response.data);
  }

  Future<PersonaModel?> fetchPersona(String id) async {
    try {
      Response response = await _dio.get('${centralUrl}persona/$id');
      if (response.statusCode == 200) {
        return PersonaModel.fromJson(response.data);
      }
    } catch (_) {}

    return null;
  }
}
