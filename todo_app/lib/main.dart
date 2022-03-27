import 'package:flutter/material.dart';
import 'package:todo_app/app/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo Task Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {'/': (context) => HomePage()},
      initialRoute: '/',
      //  home: const HomePage(),
    );
  }
}
