import 'package:QuakeInfo/features/quakeinfo/data/repository/quakeinfo_repository_impl.dart';
import 'package:QuakeInfo/features/quakeinfo/data/sources/local/bag_database.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/repository/quakeinfo_repository.dart';
import 'package:QuakeInfo/features/quakeinfo/presentation/bloc/bag/local/local_bag_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/quakeinfo/domain/entities/bag_entity.dart';
import '../../features/quakeinfo/domain/usecase/update_bag_use_case.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {

  //Database
  final database =
      await $FloorBagDatabase.databaseBuilder('bag_database.db').build();
  sl.registerSingleton<BagDatabase>(database);
  final bagDao = database.bagDao;
  final existing = await bagDao.getAllBags();
  if (existing.isEmpty) {
    for (var bag in bagList) {
      await bagDao.insertBag(bag);
    }
  }

  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Dependencies
  sl.registerSingleton<QuakeinfoRepository>(QuakeInfoRepositoryImpl(sl()));

  //UseCase
  sl.registerSingleton<UpdateBagUseCase>(UpdateBagUseCase(sl()));

  //Blocs
  sl.registerFactory<LocalBagBloc>(() => LocalBagBloc(sl()));
}
