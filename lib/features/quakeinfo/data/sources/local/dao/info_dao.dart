import 'package:floor/floor.dart';

import '../../../../domain/entities/info_entity.dart';

@dao
abstract class InfoDao {
  @Query("SELECT * FROM InfoEntity")
  Future<List<InfoEntity>> getAllInfos();

  @insert
  Future<void> insertInfo(InfoEntity info);
}