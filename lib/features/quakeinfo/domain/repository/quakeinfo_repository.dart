import 'package:QuakeInfo/core/resources/data_state.dart';
import 'package:QuakeInfo/features/quakeinfo/data/model/earthquake.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/entities/bag_entity.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/entities/info_entity.dart';

abstract class QuakeInfoRepository {
  Future<DataState<EarthquakeResponse>> getEarthquakes({required String startTime});
  Future<void> addBag(BagEntity bag);
  Future<void> updateBag(BagEntity bag);
  Future<List<BagEntity>> getAllBags();
  Future<List<InfoEntity>> getAllInfos();
}
