import 'dart:async';

import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import '../../../domain/entities/info_entity.dart';
import 'dao/info_dao.dart';
part 'info_database.g.dart';

@Database(version: 2, entities: [InfoEntity])
abstract class InfoDatabase extends FloorDatabase {
  InfoDao get infoDao;
}
