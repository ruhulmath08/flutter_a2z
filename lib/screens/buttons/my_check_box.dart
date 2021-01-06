import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  final String title;

  const MyCheckBox({Key key, this.title}) : super(key: key);

  @override
  _MyCheckBoxState createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(widget.title)),
      body: Center(child: Text(widget.title),),
    );
  }
}
