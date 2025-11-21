import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:odpalgadke/features/auth/data/auth_secure_storage.dart';
import 'package:odpalgadke/features/auth/data/data_sources/auth_data_source.dart';
import 'package:odpalgadke/features/auth/presentation/blocs/current_user_bloc.dart';
import 'package:odpalgadke/features/persona/data/data_sources/persona_data_source.dart';
import 'package:odpalgadke/features/scenario/data/data_sources/scenario_data_source.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart' show PrettyDioLogger;

final get = GetIt.instance;

Future<void> initializeDependencies() async {
  get.registerLazySingleton(() {
    Dio dio = Dio(BaseOptions(validateStatus: (_) => true));
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final authStorage = get<AuthSecureStorage>();
          var accessToken = await authStorage.getAccessToken();

          if (accessToken != null) {
            if (JwtDecoder.isExpired(accessToken)) {
              String? refreshToken = await authStorage.getRefreshToken();
              if (refreshToken != null) {
                final either = await get<AuthDataSource>().refreshToken(
                  refreshToken,
                );

                if (either.isRight) {
                  final data = either.right;
                  await get<AuthSecureStorage>().saveRefreshToken(
                    data['refreshToken'],
                  );
                  await get<AuthSecureStorage>().saveAccessToken(
                    data['accessToken'],
                  );

                  accessToken = data['accessToken'];
                }
              }
            }

            options.headers['Authorization'] = 'Bearer $accessToken';
          }

          return handler.next(options);
        },
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
        compact: false,
        maxWidth: 90,
      ),
    );
    return dio;
  });

  // Auth
  get.registerLazySingleton(() => CurrentUserBloc());
  get.registerLazySingleton(() => AuthSecureStorage());
  get.registerLazySingleton(() => AuthDataSource(get()));

  // Scenario
  get.registerLazySingleton(() => ScenarioDataSource(get()));

  // Persona
  get.registerLazySingleton(() => PersonaDataSource(get()));
}
