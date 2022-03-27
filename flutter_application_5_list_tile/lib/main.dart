import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: true, home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> quotes = [
      "Hello I am Muhammad Saad Abbasi and I am a student",
      "Hello I am Muhammad Saad Abbasi and I am a student",
      "Hello I am Muhammad Saad Abbasi and I am a student",
      "Hello I am Muhammad Saad Abbasi and I am a student",
    
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "I am listTile appBar",
        ),
        backgroundColor: Colors.blueGrey[400],
        shadowColor: Colors.red,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          String quote = quotes[index];
          return ListTile(
            tileColor: Colors.blueGrey[200],
            leading: Text("${index + 1}"),
            title: Text("quote # $index"),
            subtitle: Text(quote),
            onTap: () {
              print(quote);
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 3,
            color: Colors.amber,
          );
        },
        itemCount: quotes.length,
      ),
    );
  }
}
