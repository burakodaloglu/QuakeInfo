import 'package:QuakeInfo/features/quakeinfo/domain/entities/bag_entity.dart';

abstract class QuakeinfoRepository {
  Future<void> addBag(BagEntity bag);
  Future<void> updateBag(BagEntity bag);
  Future<List<BagEntity>> getAllBags();
}
