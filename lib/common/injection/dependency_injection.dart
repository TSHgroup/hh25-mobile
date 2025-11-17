import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:odpalgadke/features/scenario/data/data_sources/scenario_data_source.dart';
import 'package:odpalgadke/features/scenario/data/repositories/scenario_repository.dart';

final get = GetIt.instance;

Future<void> initializeDependencies() async {
  get.registerLazySingleton(() => Dio());

  // Scenario
  get.registerLazySingleton(() => ScenarioDataSource(get()));
  get.registerLazySingleton(() => ScenarioRepository(get()));
}
