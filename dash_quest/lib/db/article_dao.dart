import 'dart:async';

import 'package:dash_quest/db/common.dart';
import 'package:fimber/fimber.dart';
import 'package:sembast/sembast.dart';

class ArticleDao extends BaseDb {
  String initDbPath;

  ArticleDao(String basePath) {
    this.initDbPath = basePath + "/articles.db";
  }

  @override
  String get dbPath => initDbPath;
  Database _demoDb;

  FutureOr<Database> get _db async {
    if (_demoDb == null) {
      Fimber.i("Creating db: $dbPath");
      _demoDb = await dbFactory.openDatabase(dbPath);
    }
    return _demoDb;
  }

  Future something(String uid) async {
    final db = await _db;
  }
}
