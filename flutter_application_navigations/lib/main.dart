import 'package:flutter/material.dart';
import 'imp;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/forms": (context) => CoustomForm(),
        "/": (context) => Home(),
      },
      initialRoute: "/",
    );
  }
}
