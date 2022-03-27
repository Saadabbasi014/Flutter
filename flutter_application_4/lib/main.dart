import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: true, home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("I am appBar"),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "hi I am container",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Expanded(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
            // padding: EdgeInsets.symmetric(vertical: 114),
            child: Text(
              "hi I am container",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Expanded(
            flex: 2,
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(0)),
            // padding: EdgeInsets.symmetric(vertical: 114),
            child: Text(
              "hi I am container",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
