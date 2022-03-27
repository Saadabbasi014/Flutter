import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();

  static of(BuildContext context) {}
}

class _CustomFormState extends State<CustomForm> {
  // ignore: non_constant_identifier_names
  final TextEditingController IDController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController subjectController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // final List<String> classes = ["Java", "Dart", "Flutter"];

  @override
  Widget build(BuildContext context) {
    var value = ModalRoute.of(context)?.settings.arguments;

    print(value as String);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Row(
          children: [
            const Text("Forms"),
            Padding(
              padding: const EdgeInsets.only(left: 100),
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () async {
                  var results = await Navigator.pushNamed(context, "/subject",
                      arguments: "From Home Page");
                },
                // child: const Text("Go to Subject ")),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              children: [
                TextFormField(
                  controller: IDController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: "ID",
                      hintText: "Write here",
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      counterText: ""),
                  validator: (value) {
                    if (value == null) {
                      return "Name Can't Be Null";
                    }

                    if (value.isEmpty) {
                      return "Name Can't Be empty";
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: nameController,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      labelText: "Name",
                      hintText: "Write here",
                      filled: true,
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(),
                      counterText: ""),
                  validator: (value) {
                    if (value == null) {
                      return "Name Can't Be Null";
                    }

                    if (value.isEmpty) {
                      return "Name Can't Be empty";
                    }

                    if (value.length < 4) {
                      return "Name Must be greater than 4 chars";
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: "Email",
                      hintText: "Write here",
                      filled: true,
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                      labelText: "Phone",
                      hintText: "Write here",
                      filled: true,
                      prefixIcon: Icon(Icons.phone),
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Can't be Empty";
                    }
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ListTile(
                  leading: Text('${value.toString()}'),
                  //  title: Text('${value.IDController}'),
                  subtitle: const Text(''),
                )
              ],
            )),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            var value = _formKey.currentState?.validate() ?? false;
            if (value) {
              var map = {
                "Id": nameController.text,
                "Email": emailController.text,
                "Phone": phoneController.text
              };

              Navigator.pop(context, map);
            }
          },
          child: const Text("Submit")),
    );
  }
}
