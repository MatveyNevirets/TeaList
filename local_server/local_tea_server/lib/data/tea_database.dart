import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TeaDatabase {
  Future<void> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "tea_database.db");

    try {
      Database database = await openDatabase(
        path,
        onCreate: (Database db, int version) {
          db.execute('''CREATE TABLE tea_table (
        id INTEGER AUTOINCREMENT PRIMARY KEY,
        title TEXT,
        type TEXT,
        age INTEGER,
        price REAL
        )''');
        },
      );
    } on Object catch (error, stack) {
      throw Exception("Error: $error, StackTrace: $stack");
    }
  }
}
