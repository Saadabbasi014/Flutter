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
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
      "helllo im am Saad Abbasi and i am a student",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("I am appBar"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          String quote = quotes[index];
          return Container(
            height: 70,
            color: Colors.blueGrey.shade100,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text("$index"),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("quote # ${index + 1}"),
                      Text(quote),
                    ],
                  ),
                ),
              ],
            ),
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
