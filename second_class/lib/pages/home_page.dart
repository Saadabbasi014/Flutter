import 'package:flutter/material.dart';
import 'package:second_class/form.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

const List<String> quotes = [
  "Hello I am Muhammad Saad Abbasi and I am a student",
  "Hello I am Muhammad Saad Abbasi and I am a student",
  "Hello I am Muhammad Saad Abbasi and I am a student",
  "Hello I am Muhammad Saad Abbasi and I am a student",
];

class _HomeState extends State<Home> {
  //CustomForm student = CustomForm.of(context).setting.argument;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Row(
          children: [
            const Text("Student"),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () async {
                  var results = await Navigator.pushNamed(context, "/form",
                      arguments: quotes);

                  print(quotes);
                },
                // child: const Text("Go to Form"),
              ),
            ),
          ],
        ),
      ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) {
      //     String quote = quotes[index];
      //     return ListTile(
      //       tileColor: Colors.blueGrey[200],
      //       leading: Text("${index + 1}"),
      //       title: Text("quote # $index"),
      //       subtitle: Text(quote),
      //       onTap: () {
      //         print(quote);
      //       },
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return const Divider(
      //       height: 3,
      //       color: Colors.amber,
      //     );
      //   },
      //   itemCount: quotes.length,
      // ),

      // body: const ListTile(
      //   leading: Text('${value.id}'),
      //   title: Text('$value.'),
      //   subtitle: Text('zakaria'),
      // )
    );
  }
}
