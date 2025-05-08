import 'dart:io';

import 'package:QuakeInfo/core/resources/data_state.dart';
import 'package:QuakeInfo/features/quakeinfo/data/model/earthquake.dart';
import 'package:QuakeInfo/features/quakeinfo/data/sources/local/info_database.dart';
import 'package:QuakeInfo/features/quakeinfo/data/sources/remote/earthquake_api_service.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/entities/info_entity.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/bag_entity.dart';
import '../../domain/repository/quakeinfo_repository.dart';
import '../sources/local/bag_database.dart';

class QuakeInfoRepositoryImpl implements QuakeInfoRepository {
  final EarthquakeService _earthquakeService;
  final BagDatabase _bagDatabase;
  final InfoDatabase _infoDatabase;

  QuakeInfoRepositoryImpl(
    this._bagDatabase,
    this._infoDatabase,
    this._earthquakeService,
  );

  @override
  Future<void> addBag(BagEntity bag) {
    return _bagDatabase.bagDao.insertBag(bag);
  }

  @override
  Future<void> updateBag(BagEntity bag) {
    return _bagDatabase.bagDao.updateBag(bag);
  }

  @override
  Future<List<BagEntity>> getAllBags() {
    return _bagDatabase.bagDao.getAllBags();
  }

  @override
  Future<List<InfoEntity>> getAllInfos() {
    return _infoDatabase.infoDao.getAllInfos();
  }

  @override
  Future<DataState<EarthquakeResponse>> getEarthquakes({
    required String startTime,
  }) async {
    try {
      final httpResponse = await _earthquakeService.getEarthquakes(
        startTime: startTime,
      );

      if (httpResponse.response.statusCode == HttpStatus.ok) {
        final responseData = httpResponse.response.data as Map<String, dynamic>;

        final data = EarthquakeResponse.fromJson(responseData);

        return Success(data);
      } else {
        return Error(
          DioException(
            error: httpResponse.response.statusMessage,
            response: httpResponse.response,
            type: DioExceptionType.badResponse,
            requestOptions: httpResponse.response.requestOptions,
          ),
        );
      }
    } on DioException catch (e) {
      return Error(e);
    }
  }
}