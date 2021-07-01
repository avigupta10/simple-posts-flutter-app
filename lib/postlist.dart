// ignore_for_file: prefer_const_constructors_in_immutables, unnecessary_this, file_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'post.dart';

class PostList extends StatefulWidget {
  final List<Post> list;

  PostList(this.list);

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  void like(Function callback) {
    setState(() {
      callback();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.list.length,
      itemBuilder: (context, index) {
        var post = this.widget.list[index];
        return Card(
          child: Row(
            children: <Widget>[
              Expanded(
                  child: ListTile(
                title: Text(post.body),
                subtitle: Text(post.author),
              )),
              Row(
                children: <Widget>[
                  Container(
                    child: Text(post.likes.toString(),
                        style: TextStyle(fontSize: 20)),
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () => like(post.likePost),
                    color: post.isLiked ? Colors.blue : Colors.black,
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
