import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:odpalgadke/common/app/odpalgadke.dart';
import 'package:odpalgadke/features/analytics/data/models/analytic_model.dart';

class AnalyticDataSource {
  final Dio _dio;

  AnalyticDataSource(this._dio);

  Future<Either<Map<String, dynamic>, AnalyticModel>> fetchAnalytics() async {
    try {
      Response response = await _dio.get('${centralUrl}analytics?span=7d');
      if (response.statusCode == 200) {
        return Right(AnalyticModel.fromJson(response.data));
      }

      return Left(response.data);
    } catch (e) {
      return Left({});
    }
  }
}
