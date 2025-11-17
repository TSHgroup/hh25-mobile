import 'package:odpalgadke/common/util/either/either_util.dart';
import 'package:odpalgadke/features/scenario/data/data_sources/scenario_data_source.dart';
import 'package:odpalgadke/features/scenario/data/models/scenario_model.dart';

class ScenarioRepository {
  final ScenarioDataSource _source;

  ScenarioRepository(this._source);

  FE<List<ScenarioModel>> fetchScenarios() => fe(_source.fetchScenarios());
}
