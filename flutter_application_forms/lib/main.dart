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
  final TextEditingController phoneController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final List<String> classes = ["java", "dart", "JavaScript"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
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
                  controller: phoneController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onTap: () {
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
                SizedBox(
                  height: 16,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null) {
                      return "Phone Number Can't Be Null";
                    }
                    if (value.isEmpty) {
                      return "Phone Number Can't Be empty";
                    }
                    if (value.length != 11) {
                      return "Phone Number Can't Be less than 11 chars";
                    }
                  },
                  controller: emailController,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onTap: () {
                    print("On Tap Called");
                  },
                  onChanged: (value) {
                    //     finalValue = value;
                  },
                  decoration: const InputDecoration(
                    labelText: "Phone",
                    hintText: "Write Your Email",
                    //  fillColor: Colors.blueGrey,
                    filled: true,
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(),
                  ),
                ),
                // DropdownButtonFormField(
                //   items: classes
                //       .map((subject) => DropdownMenuItem(child: Text(subject)))
                //       .toList(),
                //   onChanged: (value) {},
                // )
              ],
            ),
          )),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            var value = _formKey.currentState?.validate();
            print("Form state + $value");
          },
          child: const Text("Show Value")),
    );
  }
}
