import 'package:flutter/material.dart';

class FlutterReorderableSliverList extends StatefulWidget {
  final String title;

  const FlutterReorderableSliverList({Key key, this.title}) : super(key: key);

  @override
  _FlutterReorderableSliverListState createState() => _FlutterReorderableSliverListState();
}

class _FlutterReorderableSliverListState extends State<FlutterReorderableSliverList> {
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
