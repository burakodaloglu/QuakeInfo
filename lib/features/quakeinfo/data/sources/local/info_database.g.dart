// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $InfoDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $InfoDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $InfoDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<InfoDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorInfoDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $InfoDatabaseBuilderContract databaseBuilder(String name) =>
      _$InfoDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $InfoDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$InfoDatabaseBuilder(null);
}

class _$InfoDatabaseBuilder implements $InfoDatabaseBuilderContract {
  _$InfoDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $InfoDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $InfoDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<InfoDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$InfoDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$InfoDatabase extends InfoDatabase {
  _$InfoDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  InfoDao? _infoDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 2,
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
            'CREATE TABLE IF NOT EXISTS `InfoEntity` (`id` INTEGER NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, `icon` INTEGER NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  InfoDao get infoDao {
    return _infoDaoInstance ??= _$InfoDao(database, changeListener);
  }
}

class _$InfoDao extends InfoDao {
  _$InfoDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _infoEntityInsertionAdapter = InsertionAdapter(
            database,
            'InfoEntity',
            (InfoEntity item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'description': item.description,
                  'icon': item.icon
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<InfoEntity> _infoEntityInsertionAdapter;

  @override
  Future<List<InfoEntity>> getAllInfos() async {
    return _queryAdapter.queryList('SELECT * FROM InfoEntity',
        mapper: (Map<String, Object?> row) => InfoEntity(
            id: row['id'] as int,
            title: row['title'] as String,
            description: row['description'] as String,
            icon: row['icon'] as int));
  }

  @override
  Future<void> insertInfo(InfoEntity info) async {
    await _infoEntityInsertionAdapter.insert(info, OnConflictStrategy.abort);
  }
}
