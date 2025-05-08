import 'package:QuakeInfo/core/resources/data_state.dart';
import 'package:QuakeInfo/features/quakeinfo/data/model/earthquake.dart';

import '../../../../core/usecase/usecase.dart';
import '../repository/quakeinfo_repository.dart';

class GetEarthquakeUseCase implements UseCase<DataState<EarthquakeResponse>, String> {
  final QuakeInfoRepository _quakeinfoRepository;

  GetEarthquakeUseCase(this._quakeinfoRepository);

  @override
  Future<DataState<EarthquakeResponse>> call({String? params}) {
    final startTime = params ?? DateTime.now().toIso8601String().split('T').first;
    return _quakeinfoRepository.getEarthquakes(startTime: startTime);
  }
}
