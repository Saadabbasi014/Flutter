import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_6_multiple_lists/quote_model.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: true, home: Home()));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<QuoteModel> quotes = [
      QuoteModel(
        quote: "quote",
        reference: "asd",
      ),
      QuoteModel(
        quote: "quote",
        reference: "asd",
      ),
      QuoteModel(
        quote: "quote",
        reference: "asd",
      ),
      QuoteModel(
        quote: "quote",
        reference: "asd",
      ),
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
          QuoteModel quote = quotes[index];
          return ListTile(
            tileColor: Colors.blueGrey[200],
            leading: Text("${index + 1}"),
            title: Text(quote.),
            subtitle: Text(quote.quote),
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
