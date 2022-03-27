import 'package:database/app/helpers/database_helper.dart';
import 'package:database/app/models/todo_model.dart';
import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({Key? key}) : super(key: key);

  @override
  _AddTodoState createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  final TextEditingController taskController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  bool? status = false;

  final DatabaseHelper _databaseHelper = DatabaseHelper();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          children: [
            TextFormField(
              controller: taskController,
              textInputAction: TextInputAction.next,
              decoration: const InputDecoration(
                hintText: "Write here",
                labelText: "Task",
              ),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (text) {
                if (text == null || text.isEmpty) {
                  return "Can't be Empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: descriptionController,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                  hintText: "Write here", labelText: "Task Description"),
            ),
            const SizedBox(
              height: 16,
            ),
            CheckboxListTile(
              title: const Text("Status"),
              value: status,
              onChanged: (value) {
                setState(() {
                  status = value;
                });
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (!_formKey.currentState!.validate()) {
                    return;
                  }

                  String task = taskController.text;
                  String description = descriptionController.text;

                  Map<String, Object?> values = {
                    "Task": task,
                    "Description": description,
                    "IsCompleted": status! ? 1 : 0
                  };


                  await _databaseHelper.initializeDatabase();

                  int result = await _databaseHelper.insert("Todos", values);
                  if (result != 0){
                    Navigator.pop(context);
                  }
                },
                child: const Text("Save"))
          ],
        ),
      ),
    );
  }
}
