import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("Build function rebuild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Text(
          "$counter",
          style: TextStyle(fontSize: 60),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void count() {
    counter++;
    print("counter value: $counter");
  }
}
