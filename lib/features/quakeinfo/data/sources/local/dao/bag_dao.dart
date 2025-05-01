import 'package:floor/floor.dart';

import '../../../../domain/entities/bag_entity.dart';

@dao
abstract class BagDao {
  @Query('SELECT * FROM BagEntity')
  Future<List<BagEntity>> getAllBags();

  @insert
  Future<void> insertBag(BagEntity bag);

  @update
  Future<void> updateBag(BagEntity bag);

  @delete
  Future<void> deleteBag(BagEntity bag);
}
