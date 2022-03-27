import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null) {
                  return "Name Can't Be Null";
                }
                if (value.isEmpty) {
                  return "Name Can't Be empty";
                }
                if (value.length < 4) {
                  return "Name Can't Be less than 8 chars";
                }
              },
              onTap: () {
                print("On Tap Called");
              },
              onChanged: (value) {
                //     finalValue = value;
              },
              decoration: const InputDecoration(
                labelText: "Name",
                hintText: "Write Your Name",
                //  fillColor: Colors.blueGrey,
                filled: true,
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: emailController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              onTap: ()  {
                print("On Tap Called");
              },
              onChanged: (value) {
                //     finalValue = value;
              },
              decoration: const InputDecoration(
                labelText: "Email",
                hintText: "Write Your Email",
                //  fillColor: Colors.blueGrey,
                filled: true,
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.visibility),
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          // nameController.text;
          nameController.clear();
          print(nameController.text);
        },
        child: const Text("ShoW Value"),
      ),
    );
  }
}
