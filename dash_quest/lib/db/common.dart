import 'dart:async';

import 'package:fimber/fimber.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

typedef DBWrapperBlock<T> = FutureOr<T> Function(Object db);

abstract class BaseDb {
  String get dbPath;

  DatabaseFactory dbFactory = databaseFactoryIo;

  FutureOr<T> dbWrapper<T>(DBWrapperBlock<T> block, {String tag}) async {
    Database db;
    try {
      db = await dbFactory.deleteDatabase(dbPath);
      Fimber.i("Opening db: ${db.path}");
    } catch (e, t) {
      Fimber.w("Error opening database : ${db.path}", ex: e, stacktrace: t);
    }
    var returnValue = await block(db);
    try {
      await db.close();
      Fimber.i("Closing db: ${db.path}");
    } catch (e, t) {
      Fimber.w("Error closing database: ${db.path}", ex: e, stacktrace: t);
    }
    return returnValue;
  }
}
