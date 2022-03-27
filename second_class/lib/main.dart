import 'package:flutter/material.dart';
import 'package:second_class/form.dart';
import 'pages/home_page.dart';
import 'pages/subject.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/form": (context) => CustomForm(),
        "/": (context) => Home(),
        "/subject": (context) => Subject(),
      },
      initialRoute: "/",
    );
  }
}
