// ignore_for_file: file_names, unnecessary_this, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'post.dart';
import 'textinputwidget.dart';
import 'postlist.dart';

class MyHomePage extends StatefulWidget {
  final String name;

  MyHomePage(this.name);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Post> posts = [];

  void newPost(String text) {
    setState(() {
      posts.add(Post(text, this.widget.name));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Blog'),
        ),
        body: Column(children: <Widget>[
          Text("Signed in as -> " + this.widget.name),
          Expanded(child: PostList(this.posts)),
          TextInputWidget(this.newPost),
        ]));
  }
}
