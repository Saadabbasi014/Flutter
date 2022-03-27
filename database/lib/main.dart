import 'package:database/app/routes/app_routes.dart';
import 'package:database/app/ui/pages/add_todo.dart';
import 'package:database/app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo Task Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme:
              const InputDecorationTheme(border: OutlineInputBorder())),
      routes: {
        AppRoutes.initialRoute: (context) => const HomePage(),
        AppRoutes.addTodo: (context) => const AddTodo(),
      },
      initialRoute: AppRoutes.initialRoute,
    );
  }
}
