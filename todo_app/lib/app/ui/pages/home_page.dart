import 'package:flutter/material.dart';
import 'package:todo_app/app/model/todo_maodel.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();

  final List<TodoModel> todos = [
    TodoModel(
        id: 1,
        task: "Call Home",
        descroption: "My Daily Call Home",
        status: false)
  ];
}

class _HomePageState extends State<HomePage> {
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
            leading: Text(todo.toString()),
            title: Text(todo.task),
            subtitle: Text(todo.descroption),
            trailing: Test(todo.status ? "Completed" : "InCompleted"),
          );
        },
        itemCount: todos.length,
      ),
    );
  }
}
