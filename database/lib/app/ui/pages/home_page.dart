import 'package:database/app/helpers/database_helper.dart';
import 'package:database/app/models/todo_model.dart';
import 'package:database/app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<TodoModel> todos = [];

  final DatabaseHelper _databaseHelper = DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo Task Manager"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          TodoModel todo = todos[index];

          return ListTile(
            leading: Text(todo.id.toString()),
            title: Text(todo.task!),
            subtitle: Text(todo.description!),
            trailing: IconButton(
                onPressed: () async {
                  await _databaseHelper.delete(todo.id!);
                  getRecords();
                },
                icon: const Icon(Icons.delete)),
          );
        },
        itemCount: todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, AppRoutes.addTodo);
          getRecords();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    initialDatabase();
  }

  Future<void> initialDatabase() async {
    await _databaseHelper.initializeDatabase();
    getRecords();
  }

  Future<void> getRecords() async {
    List<TodoModel> results = await _databaseHelper.getTodos("Todos");

    todos.clear();
    setState(() {
      todos.addAll(results);
    });
  }
}
