import 'package:flutter/material.dart';

class FlutterCrudDelete extends StatefulWidget {
  final String title;

  FlutterCrudDelete({Key key, this.title}) : super(key: key);

  @override
  _FlutterCrudDeleteState createState() => _FlutterCrudDeleteState();
}

class _FlutterCrudDeleteState extends State<FlutterCrudDelete> {
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