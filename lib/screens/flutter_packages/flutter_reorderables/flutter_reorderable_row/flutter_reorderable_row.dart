import 'package:flutter/material.dart';

class FlutterReorderableRow extends StatefulWidget {
  final String title;

  const FlutterReorderableRow({Key key, this.title}) : super(key: key);

  @override
  _FlutterReorderableRowState createState() => _FlutterReorderableRowState();
}

class _FlutterReorderableRowState extends State<FlutterReorderableRow> {
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