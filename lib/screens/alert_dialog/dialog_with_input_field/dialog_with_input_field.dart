import 'package:flutter/material.dart';

class DialogWithInputField extends StatefulWidget {
  final String title;
  
  const DialogWithInputField({Key key, this.title}) : super(key: key);

  @override
  _DialogWithInputFieldState createState() => _DialogWithInputFieldState();
}

class _DialogWithInputFieldState extends State<DialogWithInputField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(child: Text(widget.title)),
    );
  }
}