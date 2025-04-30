import 'dart:async';

import 'package:QuakeInfo/features/quakeinfo/data/sources/local/dao/bag_dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import '../../../domain/entities/bag_entity.dart';
part 'bag_database.g.dart';

@Database(version: 1, entities: [BagEntity])
abstract class BagDatabase extends FloorDatabase {
  BagDao get bagDao;
}
