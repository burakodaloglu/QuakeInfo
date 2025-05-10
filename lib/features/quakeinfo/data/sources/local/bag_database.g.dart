// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bag_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $BagDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $BagDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $BagDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<BagDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorBagDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $BagDatabaseBuilderContract databaseBuilder(String name) =>
      _$BagDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $BagDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$BagDatabaseBuilder(null);
}

class _$BagDatabaseBuilder implements $BagDatabaseBuilderContract {
  _$BagDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $BagDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $BagDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<BagDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$BagDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$BagDatabase extends BagDatabase {
  _$BagDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  BagDao? _bagDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `BagEntity` (`id` INTEGER NOT NULL, `titleKey` TEXT NOT NULL, `descriptionKey` TEXT NOT NULL, `isCompleted` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  BagDao get bagDao {
    return _bagDaoInstance ??= _$BagDao(database, changeListener);
  }
}

class _$BagDao extends BagDao {
  _$BagDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _bagEntityInsertionAdapter = InsertionAdapter(
            database,
            'BagEntity',
            (BagEntity item) => <String, Object?>{
                  'id': item.id,
                  'titleKey': item.titleKey,
                  'descriptionKey': item.descriptionKey,
                  'isCompleted': item.isCompleted ? 1 : 0
                }),
        _bagEntityUpdateAdapter = UpdateAdapter(
            database,
            'BagEntity',
            ['id'],
            (BagEntity item) => <String, Object?>{
                  'id': item.id,
                  'titleKey': item.titleKey,
                  'descriptionKey': item.descriptionKey,
                  'isCompleted': item.isCompleted ? 1 : 0
                }),
        _bagEntityDeletionAdapter = DeletionAdapter(
            database,
            'BagEntity',
            ['id'],
            (BagEntity item) => <String, Object?>{
                  'id': item.id,
                  'titleKey': item.titleKey,
                  'descriptionKey': item.descriptionKey,
                  'isCompleted': item.isCompleted ? 1 : 0
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<BagEntity> _bagEntityInsertionAdapter;

  final UpdateAdapter<BagEntity> _bagEntityUpdateAdapter;

  final DeletionAdapter<BagEntity> _bagEntityDeletionAdapter;

  @override
  Future<List<BagEntity>> getAllBags() async {
    return _queryAdapter.queryList('SELECT * FROM BagEntity',
        mapper: (Map<String, Object?> row) => BagEntity(
            id: row['id'] as int,
            titleKey: row['titleKey'] as String,
            descriptionKey: row['descriptionKey'] as String,
            isCompleted: (row['isCompleted'] as int) != 0));
  }

  @override
  Future<void> insertBag(BagEntity bag) async {
    await _bagEntityInsertionAdapter.insert(bag, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateBag(BagEntity bag) async {
    await _bagEntityUpdateAdapter.update(bag, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteBag(BagEntity bag) async {
    await _bagEntityDeletionAdapter.delete(bag);
  }
}
