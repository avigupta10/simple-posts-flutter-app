// ignore_for_file: unnecessary_this, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class TextInputWidget extends StatefulWidget {
  final Function(String) callback;

  TextInputWidget(this.callback);

  @override
  _TextInputWidgetState createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends State<TextInputWidget> {
  final controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void click() {
    widget.callback(controller.text);
    FocusScope.of(context).unfocus();
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.message_outlined),
            labelText: 'Type your message here',
            suffixIcon: IconButton(
              icon: Icon(Icons.send_rounded),
              splashColor: Colors.blue,
              tooltip: "Send message",
              onPressed: this.click,
            )));
  }
}
