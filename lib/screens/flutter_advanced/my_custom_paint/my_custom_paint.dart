import 'package:flutter/material.dart';

class MyCustomPaint extends StatefulWidget {
  final String title;

  const MyCustomPaint({Key key, this.title}) : super(key: key);

  @override
  _MyCustomPaintState createState() => _MyCustomPaintState();
}

class _MyCustomPaintState extends State<MyCustomPaint> {
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