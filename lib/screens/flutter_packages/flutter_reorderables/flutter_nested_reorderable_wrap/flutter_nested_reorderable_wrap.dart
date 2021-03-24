import 'package:flutter/material.dart';

class FlutterNestedReorderableWrap extends StatefulWidget {
  final String title;

  const FlutterNestedReorderableWrap({Key key, this.title}) : super(key: key);

  @override
  _FlutterNestedReorderableWrapState createState() => _FlutterNestedReorderableWrapState();
}

class _FlutterNestedReorderableWrapState extends State<FlutterNestedReorderableWrap> {
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