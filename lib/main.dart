// ignore_for_file: prefer_const_constructors, unnecessary_this, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:blog_flutter/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog Flutter',
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: LoginPage(),
    );
  }
}
