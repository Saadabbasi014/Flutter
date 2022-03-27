import 'package:database/app/models/todo_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  late Database _database;

  Future<void> initializeDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'todos.db');

    // open the database
    _database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      db.execute(
          'CREATE TABLE Todos (Id INTEGER PRIMARY KEY AUTOINCREMENT, Task TEXT, Description TEXT, IsCompleted INTEGER);');
    });
  }

  Future<int> insert(String table, Map<String, Object?> values) async {
    return _database.insert(table, values);
  }

  Future<int> delete(int id) async {
    return _database.delete("Todos", where: 'Id = ?', whereArgs: [id]);
  }

  Future<List<TodoModel>> getTodos(String table) async {
    List<Map> results = await _database.query(table);

    List<TodoModel> todos = [];

    for (Map row in results) {
      TodoModel todoModel = TodoModel(
        id: row["Id"],
        task: row["Task"],
        description: row["Description"],
        status: row["IsCompleted"] == 1,
      );

      todos.add(todoModel);
    }

    return todos;
  }
}
