import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  Subject({Key? key}) : super(key: key);

  final TextEditingController idController = TextEditingController();
  final TextEditingController subjectController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  get id => null;

  @override
  Widget build(BuildContext context) {
    var value = ModalRoute.of(context)?.settings.arguments as Subject?;
    print(value);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: const Text("Subject"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              TextFormField(
                controller: idController,
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
                    return "ID Can't Be Null";
                  }

                  if (value.isEmpty) {
                    return "ID Can't Be empty";
                  }

                  if (value.length < 2) {
                    return "ID Must be greater than  chars";
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: subjectController,
                decoration: const InputDecoration(
                    labelText: "Subject",
                    hintText: "Write here",
                    filled: true,
                    prefixIcon: Icon(Icons.book),
                    border: OutlineInputBorder()),
                validator: (value) {
                  if (value == null) {
                    return "Subject Can't Be Null";
                  }

                  if (value.isEmpty) {
                    return "Subject Can't Be empty";
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            var value = _formKey.currentState?.validate() ?? true;
            if (value) {
              var map = {
                "ID": idController.value,
                "subjext": subjectController.text,
              };

              Navigator.pop(context, map);
            }
          },
          child: const Text("Go Back")),
    );
  }
}
