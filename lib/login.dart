// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_this

import 'package:blog_flutter/myhomepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String name = '';
  TextEditingController controller = TextEditingController();

  void click() {
    this.name = controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MyHomePage(this.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: this.controller,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Type Your Name",
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 5, color: Colors.black)),
                suffixIcon: IconButton(
                  onPressed: this.click,
                  icon: Icon(Icons.done),
                  tooltip: "Submit",
                  splashColor: Colors.amber,
                )),
          ),
        ));
  }
}
