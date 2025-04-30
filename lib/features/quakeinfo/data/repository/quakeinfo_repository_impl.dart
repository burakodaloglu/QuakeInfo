import '../../domain/entities/bag_entity.dart';
import '../../domain/repository/quakeinfo_repository.dart';
import '../sources/local/bag_database.dart';

class QuakeInfoRepositoryImpl implements QuakeinfoRepository {
  final BagDatabase _database;

  QuakeInfoRepositoryImpl(this._database);

  @override
  Future<void> addBag(BagEntity bag) {
    return _database.bagDao.insertBag(bag);
  }

  @override
  Future<void> updateBag(BagEntity bag) {
    return _database.bagDao.updateBag(bag);
  }

  @override
  Future<List<BagEntity>> getAllBags() {
    return _database.bagDao.getAllBags();
  }
}
