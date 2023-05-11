import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key, required this.title});

  final String title;

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  // Textediting controller  variblename = classname
  //   Student st1 = Student();
  TextEditingController name = TextEditingController();
  checking(name) {
    if (name.text == '') {
      print('please enter data');
    } else {
      print(name.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Full name'),
                  controller: name,
                  // decoration: InputDecoration(hintText: "hello"),
                ),
                ElevatedButton(
                    onPressed: () {
                      checking(name);
                    },
                    child: Text("submit"))
              ]),
            ),
          ),
        ));
  }
}