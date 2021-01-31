import 'package:flutter/material.dart';

class FlutterCrudUpdate extends StatefulWidget {
  final String title;

  FlutterCrudUpdate({Key key, this.title}) : super(key: key);

  @override
  _FlutterCrudUpdateState createState() => _FlutterCrudUpdateState();
}

class _FlutterCrudUpdateState extends State<FlutterCrudUpdate> {
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
