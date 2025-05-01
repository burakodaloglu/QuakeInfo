import 'package:QuakeInfo/features/quakeinfo/data/sources/local/info_database.dart';
import 'package:QuakeInfo/features/quakeinfo/domain/entities/info_entity.dart';

import '../../domain/entities/bag_entity.dart';
import '../../domain/repository/quakeinfo_repository.dart';
import '../sources/local/bag_database.dart';

class QuakeInfoRepositoryImpl implements QuakeinfoRepository {
  final BagDatabase _bagDatabase;
  final InfoDatabase _infoDatabase;

  QuakeInfoRepositoryImpl(this._bagDatabase, this._infoDatabase);

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
}
