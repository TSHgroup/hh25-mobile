import 'package:dio/dio.dart';
import 'package:either_dart/either.dart';
import 'package:odpalgadke/common/app/odpalgadke.dart';
import 'package:odpalgadke/features/auth/data/models/user_model.dart';

class AuthDataSource {
  final Dio _dio;

  AuthDataSource(this._dio);

  Future<Either<Map<String, dynamic>, Map<String, dynamic>>> login(
    String email,
    String password,
  ) async {
    Response response = await _dio.post(
      '${centralUrl}auth/login',
      data: {"email": email, "password": password},
    );
    if (response.statusCode == 200) {
      return Right(response.data);
    }

    return Left(response.data);
  }

  Future<Either<Map<String, dynamic>, Map<String, dynamic>>> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    Response response = await _dio.post(
      '${centralUrl}auth/register',
      data: {
        "email": email,
        "password": password,
        "name": {"givenName": firstName, "familyName": lastName},
      },
    );
    if (response.statusCode == 200) {
      return Right(response.data);
    }

    return Left(response.data);
  }

  Future<Either<Map<String, dynamic>, Map<String, dynamic>>> refreshToken(
    String refreshToken,
  ) async {
    Response response = await Dio().post(
      '${centralUrl}auth/refresh',
      data: {"refreshToken": refreshToken},
    );
    if (response.statusCode == 200) {
      return Right(response.data);
    }

    return Left(response.data);
  }

  Future<Either<Map<String, dynamic>, UserModel>> fetchOwn() async {
    try {
      Response response = await _dio.get('${centralUrl}user/me');
      if (response.statusCode == 200) {
        return Right(UserModel.fromJson(response.data));
      }

      return Left(response.data);
    } catch (e) {
      return Left({});
    }
  }
}
