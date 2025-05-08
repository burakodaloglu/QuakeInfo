import 'package:QuakeInfo/features/quakeinfo/data/repository/quakeinfo_repository_impl.dart';
import 'package:QuakeInfo/features/quakeinfo/data/sources/local/bag_database.dart';
import 'package:QuakeInfo/features/quakeinfo/data/sources/remote/earthquake_api_service.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/repository/quakeinfo_repository.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/usecase/get_earthquake_use_case.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/bag/local/local_bag_bloc.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/earthquake/remote/remote_earthquake_bloc.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/info/local/local_info_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/quakeinfo/data/sources/local/info_database.dart';
import '../../features/quakeinfo/domain/entities/bag_entity.dart';
import '../../features/quakeinfo/domain/entities/info_entity.dart';
import '../../features/quakeinfo/domain/usecase/update_bag_use_case.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //Database
  final bagDatabase =
      await $FloorBagDatabase.databaseBuilder('bag_database.db').build();
  sl.registerSingleton<BagDatabase>(bagDatabase);
  final bagDao = bagDatabase.bagDao;
  final existingBag = await bagDao.getAllBags();
  if (existingBag.isEmpty) {
    for (var bag in bagList) {
      await bagDao.insertBag(bag);
    }
  }

  final infoDatabase =
      await $FloorInfoDatabase.databaseBuilder('info_database.db').build();
  sl.registerSingleton<InfoDatabase>(infoDatabase);
  final infoDao = infoDatabase.infoDao;
  final existingInfo = await infoDao.getAllInfos();
  if (existingInfo.isEmpty) {
    for (var info in infoList) {
      await infoDao.insertInfo(info);
    }
  }

  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Dependencies
  sl.registerSingleton<EarthquakeService>(EarthquakeService(sl()));
  sl.registerSingleton<QuakeInfoRepository>(
    QuakeInfoRepositoryImpl(sl(), sl(), sl()),
  );

  //UseCase
  sl.registerSingleton<UpdateBagUseCase>(UpdateBagUseCase(sl()));
  sl.registerSingleton<GetEarthquakeUseCase>(GetEarthquakeUseCase(sl()));

  //Blocs
  sl.registerFactory<LocalBagBloc>(() => LocalBagBloc(sl()));
  sl.registerFactory<LocalInfoBloc>(() => LocalInfoBloc());
  sl.registerFactory<RemoteEarthquakeBloc>(() => RemoteEarthquakeBloc(sl()));
}
